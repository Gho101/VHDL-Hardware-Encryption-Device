library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lcd1602_driver is
    port (
        clk        : in  STD_LOGIC;  -- 50 MHz clock
        reset      : in  STD_LOGIC;  -- active-high

        -- LCD interface (4-bit mode)
        lcd_rs     : out STD_LOGIC;
        lcd_e      : out STD_LOGIC;
        lcd_data   : out STD_LOGIC_VECTOR(3 downto 0)  -- D7..D4
    );
end lcd1602_driver;

architecture rtl of lcd1602_driver is

    -- Simple clock divider to get ~1 kHz tick from 50 MHz
    constant CLK_FREQ     : integer := 50000000;
    constant TICK_FREQ    : integer := 1000;
    constant TICK_COUNT   : integer := CLK_FREQ / TICK_FREQ;  -- 50_000

    signal tick_counter   : integer range 0 to TICK_COUNT-1 := 0;
    signal tick_1k        : STD_LOGIC := '0';

    -- LCD timing (in ms, based on 1 kHz tick)
    constant PWR_ON_DELAY : integer := 20;  -- 20 ms
    constant CMD_DELAY    : integer := 2;   -- 2 ms between commands
    constant CLR_DELAY    : integer := 3;   -- 3 ms for clear/home

    -- FSM states
    type state_type is (
        s_power_on_wait,
        s_init_1, s_init_2, s_init_3, s_init_4,
        s_func_set,
        s_disp_off,
        s_disp_clear,
        s_entry_mode,
        s_disp_on,
        s_ready,
        s_send_char,
        s_wait_char,
        s_done
    );

    signal state        : state_type := s_power_on_wait;
    signal next_state   : state_type;

    -- Delay counter in ms
    signal delay_ms     : integer := 0;

    -- LCD control signals
    signal rs_reg       : STD_LOGIC := '0';
    signal e_reg        : STD_LOGIC := '0';
    signal data_reg     : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

    -- Nibble send control
    type send_state_type is (send_idle, send_high, send_low, send_done);
    signal send_state   : send_state_type := send_idle;
    signal send_cmd     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal send_is_data : STD_LOGIC := '0';
    signal send_start   : STD_LOGIC := '0';
    signal send_busy    : STD_LOGIC := '0';

    -- Message ROM: "HELLO, DE10-LITE!"
    type msg_array is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    constant MSG : msg_array := (
        x"48", -- H
        x"45", -- E
        x"4C", -- L
        x"4C", -- L
        x"4F", -- O
        x"2C", -- ,
        x"20", -- space
        x"44", -- D
        x"45", -- E
        x"31", -- 1
        x"30", -- 0
        x"2D", -- -
        x"4C", -- L
        x"49", -- I
        x"54", -- T
        x"45"  -- E
    );

    signal msg_index : integer range 0 to 15 := 0;

begin

    --------------------------------------------------------------------
    -- Output assignments
    --------------------------------------------------------------------
    lcd_rs   <= rs_reg;
    lcd_e    <= e_reg;
    lcd_data <= data_reg;

    --------------------------------------------------------------------
    -- 1 kHz tick generator
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            tick_counter <= 0;
            tick_1k      <= '0';
        elsif rising_edge(clk) then
            if tick_counter = TICK_COUNT-1 then
                tick_counter <= 0;
                tick_1k      <= '1';
            else
                tick_counter <= tick_counter + 1;
                tick_1k      <= '0';
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Nibble sender (4-bit write)
    -- send_start = '1' to start sending send_cmd (8-bit)
    -- send_is_data = '1' for data, '0' for command
    --------------------------------------------------------------------
    process(clk, reset)
        variable sub_state_cnt : integer := 0;
    begin
        if reset = '1' then
            send_state   <= send_idle;
            send_busy    <= '0';
            rs_reg       <= '0';
            e_reg        <= '0';
            data_reg     <= (others => '0');
            sub_state_cnt := 0;
        elsif rising_edge(clk) then
            case send_state is
                when send_idle =>
                    send_busy <= '0';
                    e_reg     <= '0';
                    if send_start = '1' then
                        send_state    <= send_high;
                        send_busy     <= '1';
                        rs_reg        <= send_is_data;
                        sub_state_cnt := 0;
                    end if;

                when send_high =>
                    -- Put high nibble on bus and pulse E
                    case sub_state_cnt is
                        when 0 =>
                            data_reg <= send_cmd(7 downto 4);
                            e_reg    <= '1';
                            sub_state_cnt := 1;
                        when 1 =>
                            e_reg    <= '0';
                            sub_state_cnt := 0;
                            send_state <= send_low;
                        when others =>
                            sub_state_cnt := 0;
                    end case;

                when send_low =>
                    -- Put low nibble on bus and pulse E
                    case sub_state_cnt is
                        when 0 =>
                            data_reg <= send_cmd(3 downto 0);
                            e_reg    <= '1';
                            sub_state_cnt := 1;
                        when 1 =>
                            e_reg    <= '0';
                            sub_state_cnt := 0;
                            send_state <= send_done;
                        when others =>
                            sub_state_cnt := 0;
                    end case;

                when send_done =>
                    send_busy    <= '0';
                    send_state   <= send_idle;
                    e_reg        <= '0';
            end case;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Main FSM
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            state      <= s_power_on_wait;
            delay_ms   <= 0;
            msg_index  <= 0;
        elsif rising_edge(clk) then
            if tick_1k = '1' then  -- advance FSM at 1 kHz
                case state is

                    when s_power_on_wait =>
                        if delay_ms < PWR_ON_DELAY then
                            delay_ms <= delay_ms + 1;
                        else
                            delay_ms <= 0;
                            -- First init nibble: 0x3 (8-bit mode)
                            send_cmd     <= x"30";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_init_1;
                        end if;

                    when s_init_1 =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            state    <= s_init_2;
                        end if;

                    when s_init_2 =>
                        if delay_ms < CMD_DELAY then
                            delay_ms <= delay_ms + 1;
                        else
                            delay_ms <= 0;
                            send_cmd     <= x"30";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_init_3;
                        end if;

                    when s_init_3 =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            state    <= s_init_4;
                        end if;

                    when s_init_4 =>
                        if delay_ms < CMD_DELAY then
                            delay_ms <= delay_ms + 1;
                        else
                            delay_ms <= 0;
                            -- Switch to 4-bit mode: 0x2 (upper nibble)
                            send_cmd     <= x"20";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_func_set;
                        end if;

                    when s_func_set =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            -- Function set: 0x28 (4-bit, 2 lines, 5x8 font)
                            send_cmd     <= x"28";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_disp_off;
                        end if;

                    when s_disp_off =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            -- Display off: 0x08
                            send_cmd     <= x"08";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_disp_clear;
                        end if;

                    when s_disp_clear =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            -- Clear display: 0x01
                            send_cmd     <= x"01";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_entry_mode;
                        end if;

                    when s_entry_mode =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            -- Entry mode: 0x06 (increment, no shift)
                            send_cmd     <= x"06";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_disp_on;
                        end if;

                    when s_disp_on =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            -- Display on, cursor off, blink off: 0x0C
                            send_cmd     <= x"0C";
                            send_is_data <= '0';
                            send_start   <= '1';
                            state        <= s_ready;
                        end if;

                    when s_ready =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms   <= 0;
                            msg_index  <= 0;
                            state      <= s_send_char;
                        end if;

                    when s_send_char =>
                        if msg_index <= 15 then
                            send_cmd     <= MSG(msg_index);
                            send_is_data <= '1';
                            send_start   <= '1';
                            state        <= s_wait_char;
                        else
                            state <= s_done;
                        end if;

                    when s_wait_char =>
                        send_start <= '0';
                        if send_busy = '0' then
                            delay_ms <= 0;
                            msg_index <= msg_index + 1;
                            state <= s_send_char;
                        end if;

                    when s_done =>
                        -- Stay here; message displayed
                        null;

                end case;
            end if;
        end if;
    end process;

end rtl;