library ieee;                -- Load the ieee 1164 library
use ieee.std_logic_1164.all; -- Make the ieee package 'visible'

entity fa is port(
	a, b, c_in: in std_ulogic;
	c_out, s: out std_ulogic);
	end entity fa;
	
architecture behavioral of fa is
	begin
	process (a, b, c_in)
		begin
		c_out <= (a and b) or (a and c_in) or (b and c_in);
		s <= a xor b xor c_in;
		end process;
	end architecture behavioral;