library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tx is
    port (
        clk     : in  std_logic;               -- 50 MHz clock
        data_in : in  std_logic_vector(7 downto 0);
        start   : in  std_logic;               -- pulse to start sending
        tx      : out std_logic;               -- serial output
        busy    : out std_logic                -- high while transmitting
    );
end uart_tx;

architecture rtl of uart_tx is

    constant CLK_FREQ  : integer := 50000000;
    constant BAUD_RATE : integer := 9600;
    constant BAUD_TICK : integer := CLK_FREQ / BAUD_RATE;

    signal baud_cnt : integer range 0 to BAUD_TICK-1 := 0;
    signal bit_cnt  : integer range 0 to 9 := 0;

    signal tx_reg   : std_logic := '1';
    signal busy_reg : std_logic := '0';
    signal shifter  : std_logic_vector(9 downto 0);

begin

    tx   <= tx_reg;
    busy <= busy_reg;

    process(clk)
    begin
        if rising_edge(clk) then

            if busy_reg = '0' then
                if start = '1' then
                    -- Frame: stop + data + start
                    shifter <= '1' & data_in & '0';
                    busy_reg <= '1';
                    bit_cnt <= 0;
                    baud_cnt <= 0;
                end if;

            else
                if baud_cnt = BAUD_TICK-1 then
                    baud_cnt <= 0;

                    tx_reg <= shifter(bit_cnt);

                    if bit_cnt = 9 then
                        busy_reg <= '0';
                    else
                        bit_cnt <= bit_cnt + 1;
                    end if;

                else
                    baud_cnt <= baud_cnt + 1;
                end if;

            end if;

        end if;
    end process;

end rtl;

