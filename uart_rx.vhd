library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx is
    port (
        clk      : in  std_logic;               -- 50 MHz clock
        rx       : in  std_logic;               -- serial input
        data_out : out std_logic_vector(7 downto 0);
        ready    : out std_logic                -- 1‑cycle pulse when byte received
    );
end uart_rx;

architecture rtl of uart_rx is

    constant CLK_FREQ  : integer := 50000000;
    constant BAUD_RATE : integer := 9600;
    constant BAUD_TICK : integer := CLK_FREQ / BAUD_RATE;

    signal rx_sync  : std_logic_vector(1 downto 0) := (others => '1');

    signal baud_cnt : integer range 0 to BAUD_TICK-1 := 0;
    signal bit_cnt  : integer range 0 to 9 := 0;

    signal shift_reg : std_logic_vector(7 downto 0) := (others => '0');
    signal ready_reg : std_logic := '0';

    signal receiving : std_logic := '0';

begin

    ready <= ready_reg;

    --------------------------------------------------------------------
    -- Synchronize RX
    --------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            rx_sync <= rx_sync(0) & rx;
        end if;
    end process;

    --------------------------------------------------------------------
    -- UART RX logic (1× oversampling)
    --------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            ready_reg <= '0';

            if receiving = '0' then
                ------------------------------------------------------------
                -- Wait for start bit (falling edge)
                ------------------------------------------------------------
                if rx_sync(1) = '0' then
                    receiving <= '1';
                    bit_cnt <= 0;
                    baud_cnt <= BAUD_TICK/2;  -- wait half bit
                end if;

            else
                ------------------------------------------------------------
                -- Receiving bits
                ------------------------------------------------------------
                if baud_cnt = BAUD_TICK-1 then
                    baud_cnt <= 0;

                    if bit_cnt = 0 then
                        -- sample start bit (ignore)
                        bit_cnt <= 1;

                    elsif bit_cnt >= 1 and bit_cnt <= 8 then
                        -- sample data bits
                        shift_reg(bit_cnt-1) <= rx_sync(1);
                        bit_cnt <= bit_cnt + 1;

                    elsif bit_cnt = 9 then
                        -- stop bit
                        receiving <= '0';
                        ready_reg <= '1';
                        data_out <= shift_reg;

                    end if;

                else
                    baud_cnt <= baud_cnt + 1;
                end if;

            end if;

        end if;
    end process;

end rtl;
