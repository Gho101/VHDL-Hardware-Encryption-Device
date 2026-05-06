library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcd_test is
    port (
        clk       : in  std_logic;   -- 50 MHz
        reset_n   : in  std_logic;   -- active-low reset

        lcd_rs    : out std_logic;
        lcd_e     : out std_logic;
        lcd_data  : out std_logic_vector(3 downto 0)
    );
end lcd_test;

architecture rtl of lcd_test is

    signal reset : std_logic;

    --------------------------------------------------------------------
    -- LCD driver interface
    --------------------------------------------------------------------
    signal lcd_byte  : std_logic_vector(7 downto 0);
    signal lcd_write : std_logic := '0';
    signal lcd_busy  : std_logic;

    --------------------------------------------------------------------
    -- Test message (simple string)
    --------------------------------------------------------------------
    constant MSG : string := "BBBBBBBBBB";

    -- Convert a single character to ASCII
    function char_to_ascii(c : character) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(character'pos(c), 8));
    end function;

    --------------------------------------------------------------------
    -- FSM
    --------------------------------------------------------------------
    type state_type is (idle, load_char, wait_busy, next_char, done);
    signal state : state_type := idle;

    signal index : integer range 0 to MSG'length := 0;

begin

    reset <= not reset_n;

    --------------------------------------------------------------------
    -- LCD Driver Instance
    --------------------------------------------------------------------
    lcd_inst : entity work.lcd_driver
        port map (
            clk       => clk,
            reset     => reset,
            data_in   => lcd_byte,
            write_en  => lcd_write,
            busy      => lcd_busy,
            lcd_rs    => lcd_rs,
            lcd_e     => lcd_e,
            lcd_data  => lcd_data
        );

    --------------------------------------------------------------------
    -- Test FSM
    --------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then

            lcd_write <= '0';  -- default

            if reset = '1' then
                state <= idle;
                index <= 0;

            else
                case state is

                    ----------------------------------------------------
                    when idle =>
                        index <= 0;
                        state <= load_char;

                    ----------------------------------------------------
                    when load_char =>
                        lcd_byte <= char_to_ascii(MSG(index + 1));
                        lcd_write <= '1';
                        state <= wait_busy;

                    ----------------------------------------------------
                    when wait_busy =>
                        if lcd_busy = '0' then
                            state <= next_char;
                        end if;

                    ----------------------------------------------------
                    when next_char =>
                        if index = MSG'length - 1 then
                            state <= done;
                        else
                            index <= index + 1;
                            state <= load_char;
                        end if;

                    ----------------------------------------------------
                    when done =>
                        state <= done;

                end case;
            end if;
        end if;
    end process;

end rtl;