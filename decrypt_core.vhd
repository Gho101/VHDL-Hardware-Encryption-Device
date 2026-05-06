library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spn_core_inv is
    port (
        data_in  : in  std_logic_vector(7 downto 0);
        key0     : in  std_logic_vector(7 downto 0);
        key1     : in  std_logic_vector(7 downto 0);
        key2     : in  std_logic_vector(7 downto 0);
        key3     : in  std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end spn_core_inv;

architecture rtl of spn_core_inv is

    --------------------------------------------------------------------
    -- Inverse S‑box (must match your forward S‑box)
    --------------------------------------------------------------------
    function inv_sbox(x : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable y : std_logic_vector(7 downto 0);
    begin
        case x is
            when x"63" => y := x"00";
            when x"7C" => y := x"01";
            when x"77" => y := x"02";
            when x"7B" => y := x"03";
            when x"F0" => y := x"10";
            when x"0F" => y := x"11";
            when others => y := not x;  -- inverse of fallback
        end case;
        return y;
    end function;

    --------------------------------------------------------------------
    -- Inverse permutation (reverse of your permute function)
    --------------------------------------------------------------------
    function inv_permute(x : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable y : std_logic_vector(7 downto 0);
    begin
        -- Forward permute:
        -- y(7)=x(2), y(6)=x(5), y(5)=x(7), y(4)=x(1),
        -- y(3)=x(3), y(2)=x(0), y(1)=x(6), y(0)=x(4)

        y(2) := x(7);
        y(5) := x(6);
        y(7) := x(5);
        y(1) := x(4);
        y(3) := x(3);
        y(0) := x(2);
        y(6) := x(1);
        y(4) := x(0);

        return y;
    end function;

    --------------------------------------------------------------------
    -- One inverse round: invPermute → invSbox → AddRoundKey
    --------------------------------------------------------------------
    function inv_round_fn(d, k : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable t : std_logic_vector(7 downto 0);
    begin
        t := inv_permute(d);
        t := inv_sbox(t);
        t := t xor k;  -- XOR is its own inverse
        return t;
    end function;

    signal r0, r1, r2 : std_logic_vector(7 downto 0);

begin

    -- Reverse order of keys
    r0      <= inv_round_fn(data_in, key3);
    r1      <= inv_round_fn(r0,      key2);
    r2      <= inv_round_fn(r1,      key1);
    data_out <= inv_round_fn(r2,     key0);

end rtl;

