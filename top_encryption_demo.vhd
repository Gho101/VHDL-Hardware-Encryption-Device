library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.types_pkg.all;

entity top_encryption_demo is
    port (
        clk_50   : in  std_logic;
        reset_n  : in  std_logic;
        uart_rx  : in  std_logic;
        uart_tx  : out std_logic;
        key0     : in  std_logic
    );
end top_encryption_demo;

architecture behavioral of top_encryption_demo is

    --------------------------------------------------------------------
    -- UART RX/TX signals
    --------------------------------------------------------------------
    signal rx_byte   : std_logic_vector(7 downto 0);
    signal rx_ready  : std_logic;

    signal tx_data   : std_logic_vector(7 downto 0);
    signal tx_start  : std_logic := '0';
    signal tx_busy   : std_logic;

    --------------------------------------------------------------------
    -- Text buffer
    --------------------------------------------------------------------
    signal text_buffer : buffer_t;
    signal buf_len     : integer range 0 to 64 := 0;

    --------------------------------------------------------------------
    -- KEY0 edge detection
    --------------------------------------------------------------------
    signal key0_sync : std_logic_vector(2 downto 0) := (others => '1');
    signal key0_edge : std_logic := '0';

    --------------------------------------------------------------------
    -- FSM
    --------------------------------------------------------------------
    type state_t is (
        S_RECEIVE,
        S_WAIT_KEY,
        S_PROCESS,
        S_TX_LOAD,
        S_TX_SEND,
        S_TX_WAIT
    );
    signal state   : state_t := S_RECEIVE;
    signal index   : integer range 0 to 64 := 0;
	 
	 --------------------------------------------------------------------
	 --SPN key
	 --------------------------------------------------------------------
	 constant K0 : std_logic_vector(7 downto 0) := x"12";
	 constant K1 : std_logic_vector(7 downto 0) := x"A7";
	 constant K2 : std_logic_vector(7 downto 0) := x"5C";
	 constant K3 : std_logic_vector(7 downto 0) := x"F1";
	 
	 signal enc_mode : std_logic := '1';  -- 1 = encrypt, 0 = decrypt
	 signal spn_enc_out : std_logic_vector(7 downto 0);
	 signal spn_dec_out : std_logic_vector(7 downto 0);

begin

    --------------------------------------------------------------------
    -- UART RX
    --------------------------------------------------------------------
    u_rx : entity work.uart_rx
        port map (
            clk      => clk_50,
            rx       => uart_rx,
            data_out => rx_byte,
            ready    => rx_ready
        );

    --------------------------------------------------------------------
    -- UART TX
    --------------------------------------------------------------------
    u_tx : entity work.uart_tx
        port map (
            clk     => clk_50,
            data_in => tx_data,
            start   => tx_start,
            tx      => uart_tx,
            busy    => tx_busy
        );
		  
	 --------------------------------------------------------------------
	 --SPN encryp
	 --------------------------------------------------------------------
	 u_spn: entity work.spn_core
		 port map (
			  data_in  => text_buffer(index),
			  key0     => K0,
			  key1     => K1,
			  key2     => K2,
			  key3     => K3,
			  data_out => spn_enc_out
    );
	 --------------------------------------------------------------------
	 --SPN decryp
	 --------------------------------------------------------------------
	 u_spn_dec: entity work.spn_core_inv
		 port map (
			  data_in  => text_buffer(index),
			  key0     => K0,
			  key1     => K1,
			  key2     => K2,
			  key3     => K3,
			  data_out => spn_dec_out
    );

    --------------------------------------------------------------------
    -- KEY0 edge detection
    --------------------------------------------------------------------
    process(clk_50, reset_n)
    begin
        if reset_n = '0' then
            key0_sync <= (others => '1');
            key0_edge <= '0';
        elsif rising_edge(clk_50) then
            key0_sync <= key0_sync(1 downto 0) & key0;
            key0_edge <= '0';
            if key0_sync(2) = '1' and key0_sync(1) = '0' then
                key0_edge <= '1';
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Main FSM
    --------------------------------------------------------------------
    process(clk_50, reset_n)
    begin
        if reset_n = '0' then
            state    <= S_RECEIVE;
            buf_len  <= 0;
            index    <= 0;
            tx_start <= '0';
				enc_mode <= '1';

        elsif rising_edge(clk_50) then
            tx_start <= '0';

            case state is

                ----------------------------------------------------------------
                -- Collect bytes from UART
                ----------------------------------------------------------------
                when S_RECEIVE =>
                    if rx_ready = '1' then
                        if buf_len < 64 then
                            text_buffer(buf_len) <= rx_byte;
                            buf_len <= buf_len + 1;
                        end if;
                    end if;

                    if buf_len > 0 then
                        state <= S_WAIT_KEY;
                    end if;

                ----------------------------------------------------------------
                -- Wait for KEY0 press
                ----------------------------------------------------------------
                when S_WAIT_KEY =>
                    if rx_ready = '1' then
                        if buf_len < 64 then
                            text_buffer(buf_len) <= rx_byte;
                            buf_len <= buf_len + 1;
                        end if;
                    end if;

                    if key0_edge = '1' and buf_len > 0 then
                        index <= 0;
								  enc_mode <= not enc_mode;
                        state <= S_PROCESS;
                    end if;
                
                ----------------------------------------------------------------
                -- SPN encrypt/decrypt buffer in place
                ----------------------------------------------------------------
                when S_PROCESS =>
                    if index < buf_len then
                        if enc_mode = '1' then
                            text_buffer(index) <= spn_enc_out;
                        else
                            text_buffer(index) <= spn_dec_out;
                        end if;
                        index <= index + 1;
                    else
                        index <= 0;
                        state <= S_TX_LOAD;
                    end if;
                ----------------------------------------------------------------
                -- Load byte into TX
                ----------------------------------------------------------------
                when S_TX_LOAD =>
                    tx_data  <= text_buffer(index);
                    tx_start <= '1';
                    state    <= S_TX_SEND;

                ----------------------------------------------------------------
                -- Wait for TX to start
                ----------------------------------------------------------------
                when S_TX_SEND =>
                    if tx_busy = '1' then
                        state <= S_TX_WAIT;
                    end if;

                ----------------------------------------------------------------
                -- Wait for TX to finish, then next byte or wait for next key
                ----------------------------------------------------------------
                when S_TX_WAIT =>
                    if tx_busy = '0' then
                        if index < buf_len - 1 then
                            index <= index + 1;
                            state <= S_TX_LOAD;
                        else
                            index <= 0;
									 --buf_len <= 0;
                            state <= S_WAIT_KEY;  -- DO NOT CLEAR BUFFER
                        end if;
                    end if;
            end case;
        end if;
    end process;

end behavioral;
