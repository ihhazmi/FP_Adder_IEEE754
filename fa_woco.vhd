library ieee;                -- Load the ieee 1164 library
use ieee.std_logic_1164.all; -- Make the ieee package 'visible'

entity fa_woco is port(
	a, b, c_in: in std_ulogic;
	s: out std_ulogic);
	end entity fa_woco;
	
architecture behavioral of fa_woco is
	begin
	process (a, b, c_in)
		begin
		s <= a xor b xor c_in;
		end process;
	end architecture behavioral;