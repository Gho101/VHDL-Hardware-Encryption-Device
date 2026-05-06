library ieee;
use ieee.std_logic_1164.all;

package types_pkg is
    type buffer_t is array(0 to 63) of std_logic_vector(7 downto 0);
end package;