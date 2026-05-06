library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spn_core is
    port (
        data_in  : in  std_logic_vector(7 downto 0);
        key0     : in  std_logic_vector(7 downto 0);
        key1     : in  std_logic_vector(7 downto 0);
        key2     : in  std_logic_vector(7 downto 0);
        key3     : in  std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end spn_core;

architecture rtl of spn_core is

    -- 8‑bit S‑box (toy example; you can expand/replace)
    function sbox(x : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable y : std_logic_vector(7 downto 0);
    begin
        case x is
            when x"00" => y := x"63";
            when x"01" => y := x"7C";
            when x"02" => y := x"77";
            when x"03" => y := x"7B";
            when x"10" => y := x"F0";
            when x"11" => y := x"0F";
            when others => y := not x;  -- fallback non‑linear-ish
        end case;
        return y;
    end function;

    -- Bit permutation
    function permute(x : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable y : std_logic_vector(7 downto 0);
    begin
        -- Example permutation: [2,5,7,1,3,0,6,4]
        y(7) := x(2);
        y(6) := x(5);
        y(5) := x(7);
        y(4) := x(1);
        y(3) := x(3);
        y(2) := x(0);
        y(1) := x(6);
        y(0) := x(4);
        return y;
    end function;

    -- One round: AddRoundKey → S‑box → Permute
    function round_fn(d, k : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable t : std_logic_vector(7 downto 0);
    begin
        t := d xor k;      -- AddRoundKey
        t := sbox(t);      -- SubBytes
        t := permute(t);   -- Permute
        return t;
    end function;

    signal r0, r1, r2 : std_logic_vector(7 downto 0);

begin

    -- 4‑round SPN, purely combinational
    r0      <= round_fn(data_in, key0);
    r1      <= round_fn(r0,      key1);
    r2      <= round_fn(r1,      key2);
    data_out <= round_fn(r2,     key3);

end rtl;

