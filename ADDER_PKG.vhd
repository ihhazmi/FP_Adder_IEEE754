library ieee;                -- Load the ieee 1164 library
use ieee.std_logic_1164.all; -- Make the ieee package 'visible'

package ADDER_PKG is
	component fa port (
		a, b, c_in: in std_ulogic;
		c_out, s: out std_ulogic);
   		end component;
   		
   	component fa_woco port (
		a, b, c_in: in std_ulogic;
		s: out std_ulogic);
   		end component;
end ADDER_PKG;
             
            

 