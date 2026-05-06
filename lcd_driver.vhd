library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcd_driver is
    port (
        clk       : in  std_logic;   -- 50 MHz
        reset     : in  std_logic;

        data_in   : in  std_logic_vector(7 downto 0);
        write_en  : in  std_logic;
        busy      : out std_logic;

        lcd_rs    : out std_logic;
        lcd_e     : out std_logic;
        lcd_data  : out std_logic_vector(3 downto 0)
    );
end lcd_driver;

architecture rtl of lcd_driver is

    --------------------------------------------------------------------
    -- Timing (50 MHz clock)
    --------------------------------------------------------------------
    constant T_15MS  : integer := 750000;
    constant T_5MS   : integer := 250000;
    constant T_100US : integer := 5000;
    constant T_40US  : integer := 2000;

    -- Enable pulse width: 25 cycles = 500 ns
    constant T_EN_PULSE : integer := 25;

    --------------------------------------------------------------------
    -- FSM States
    --------------------------------------------------------------------
    type state_type is (
        init_wait,
        init_1, init_1_wait,
        init_2, init_2_wait,
        init_3, init_3_wait,
        init_4bit, init_4bit_wait,
        idle,
        send_high, pulse_high, wait_high,
        send_low, pulse_low, wait_low
    );

    signal state : state_type := init_wait;

    --------------------------------------------------------------------
    -- Internal signals
    --------------------------------------------------------------------
    signal counter : integer := 0;
    signal rs_reg  : std_logic := '0';
    signal e_reg   : std_logic := '0';
    signal data_reg : std_logic_vector(3 downto 0) := (others => '0');

    signal data_latched : std_logic_vector(7 downto 0);

begin

    lcd_rs   <= rs_reg;
    lcd_e    <= e_reg;
    lcd_data <= data_reg;

    busy <= '1' when state /= idle else '0';

    --------------------------------------------------------------------
    -- Main FSM
    --------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then

            if reset = '1' then
                state   <= init_wait;
                counter <= 0;
                rs_reg  <= '0';
                e_reg   <= '0';

            else
                case state is

                    ----------------------------------------------------------------
                    -- 15 ms power‑on wait
                    ----------------------------------------------------------------
                    when init_wait =>
                        if counter < T_15MS then
                            counter <= counter + 1;
                        else
                            counter <= 0;
                            state <= init_1;
                        end if;

                    ----------------------------------------------------------------
                    -- Send 0x3 (8‑bit wake‑up)
                    ----------------------------------------------------------------
                    when init_1 =>
                        data_reg <= "0011";
                        e_reg <= '1';
                        counter <= 0;
                        state <= init_1_wait;

                    when init_1_wait =>
                        if counter < T_EN_PULSE then
                            counter <= counter + 1;
                        else
                            e_reg <= '0';
                            counter <= 0;
                            state <= init_2;
                        end if;

                    ----------------------------------------------------------------
                    -- Repeat 0x3
                    ----------------------------------------------------------------
                    when init_2 =>
                        if counter < T_5MS then
                            counter <= counter + 1;
                        else
                            counter <= 0;
                            data_reg <= "0011";
                            e_reg <= '1';
                            state <= init_2_wait;
                        end if;

                    when init_2_wait =>
                        if counter < T_EN_PULSE then
                            counter <= counter + 1;
                        else
                            e_reg <= '0';
                            counter <= 0;
                            state <= init_3;
                        end if;

                    ----------------------------------------------------------------
                    -- Third 0x3
                    ----------------------------------------------------------------
                    when init_3 =>
                        if counter < T_100US then
                            counter <= counter + 1;
                        else
                            counter <= 0;
                            data_reg <= "0011";
                            e_reg <= '1';
                            state <= init_3_wait;
                        end if;

                    when init_3_wait =>
                        if counter < T_EN_PULSE then
                            counter <= counter + 1;
                        else
                            e_reg <= '0';
                            counter <= 0;
                            state <= init_4bit;
                        end if;

                    ----------------------------------------------------------------
                    -- Switch to 4‑bit mode (0x2)
                    ----------------------------------------------------------------
                    when init_4bit =>
                        if counter < T_40US then
                            counter <= counter + 1;
                        else
                            counter <= 0;
                            data_reg <= "0010";
                            e_reg <= '1';
                            state <= init_4bit_wait;
                        end if;

                    when init_4bit_wait =>
                        if counter < T_EN_PULSE then
                            counter <= counter + 1;
                        else
                            e_reg <= '0';
                            counter <= 0;
                            state <= idle;
                        end if;

                    ----------------------------------------------------------------
                    -- Idle: wait for write request
                    ----------------------------------------------------------------
                    when idle =>
                        if write_en = '1' then
                            data_latched <= data_in;
                            rs_reg <= '1';
                            state <= send_high;
                        end if;

                    ----------------------------------------------------------------
                    -- Send high nibble
                    ----------------------------------------------------------------
                    when send_high =>
                        data_reg <= data_latched(7 downto 4);
                        e_reg <= '1';
                        counter <= 0;
                        state <= pulse_high;

                    when pulse_high =>
                        if counter < T_EN_PULSE then
                            counter <= counter + 1;
                        else
                            e_reg <= '0';
                            counter <= 0;
                            state <= wait_high;
                        end if;

                    when wait_high =>
                        if counter < T_40US then
                            counter <= counter + 1;
                        else
                            counter <= 0;
                            state <= send_low;
                        end if;

                    ----------------------------------------------------------------
                    -- Send low nibble
                    ----------------------------------------------------------------
                    when send_low =>
                        data_reg <= data_latched(3 downto 0);
                        e_reg <= '1';
                        counter <= 0;
                        state <= pulse_low;

                    when pulse_low =>
                        if counter < T_EN_PULSE then
                            counter <= counter + 1;
                        else
                            e_reg <= '0';
                            counter <= 0;
                            state <= wait_low;
                        end if;

                    when wait_low =>
                        if counter < T_40US then
                            counter <= counter + 1;
                        else
                            counter <= 0;
                            state <= idle;
                        end if;

                end case;
            end if;
        end if;
    end process;

end rtl;