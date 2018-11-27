-- See p198 of text for overloading

library ieee;                -- Load the ieee 1164 library
use ieee.std_logic_1164.all; -- Make the ieee package 'visible'

entity FN_ADDER is port(
	z_n1_e, z_n2_e: in std_ulogic_vector (23 downto 0); -- note extra bit for (1.) PART OF HTE FLOAT NUBER
	C_in: in std_ulogic;
	FN_add_out: out std_ulogic_vector (23 downto 0); 
	C_out: out std_ulogic);
end entity FN_ADDER;

use work.ADDER_PKG.all; -- note need to compile all sub-entities before this entity can be compiled!
	
architecture struct of FN_ADDER is
	signal carry_bit: std_ulogic_vector(24 downto 0);
	begin
	   carry_bit(0)<= c_in; -- out put of comps_OR
		fa_0: fa port map (z_n1_e(0), z_n2_e(0), carry_bit(0), carry_bit(1), FN_add_out(0));
		fa_1: fa port map (z_n1_e(1), z_n2_e(1), carry_bit(1), carry_bit(2), FN_add_out(1));
		fa_2: fa port map (z_n1_e(2), z_n2_e(2), carry_bit(2), carry_bit(3), FN_add_out(2));
		fa_3: fa port map (z_n1_e(3), z_n2_e(3), carry_bit(3), carry_bit(4), FN_add_out(3));
		fa_4: fa port map (z_n1_e(4), z_n2_e(4), carry_bit(4), carry_bit(5), FN_add_out(4));
		fa_5: fa port map (z_n1_e(5), z_n2_e(5), carry_bit(5), carry_bit(6), FN_add_out(5));
		fa_6: fa port map (z_n1_e(6), z_n2_e(6), carry_bit(6), carry_bit(7), FN_add_out(6));
		fa_7: fa port map (z_n1_e(7), z_n2_e(7), carry_bit(7), carry_bit(8), FN_add_out(7));
		fa_8: fa port map (z_n1_e(8), z_n2_e(8), carry_bit(8), carry_bit(9), FN_add_out(8));
		fa_9: fa port map (z_n1_e(9), z_n2_e(9), carry_bit(9), carry_bit(10), FN_add_out(9));
		fa_10: fa port map (z_n1_e(10), z_n2_e(10), carry_bit(10), carry_bit(11), FN_add_out(10));
		fa_11: fa port map (z_n1_e(11), z_n2_e(11), carry_bit(11), carry_bit(12), FN_add_out(11));
		fa_12: fa port map (z_n1_e(12), z_n2_e(12), carry_bit(12), carry_bit(13), FN_add_out(12));
		fa_13: fa port map (z_n1_e(13), z_n2_e(13), carry_bit(13), carry_bit(14), FN_add_out(13));
		fa_14: fa port map (z_n1_e(14), z_n2_e(14), carry_bit(14), carry_bit(15), FN_add_out(14));
		fa_15: fa port map (z_n1_e(15), z_n2_e(15), carry_bit(15), carry_bit(16), FN_add_out(15));
		fa_16: fa port map (z_n1_e(16), z_n2_e(16), carry_bit(16), carry_bit(17), FN_add_out(16));
		fa_17: fa port map (z_n1_e(17), z_n2_e(17), carry_bit(17), carry_bit(18), FN_add_out(17));
		fa_18: fa port map (z_n1_e(18), z_n2_e(18), carry_bit(18), carry_bit(19), FN_add_out(18));
		fa_19: fa port map (z_n1_e(19), z_n2_e(19), carry_bit(19), carry_bit(20), FN_add_out(19));
		fa_20: fa port map (z_n1_e(20), z_n2_e(20), carry_bit(20), carry_bit(21), FN_add_out(20));
		fa_21: fa port map (z_n1_e(21), z_n2_e(21), carry_bit(21), carry_bit(22), FN_add_out(21));
		fa_22: fa port map (z_n1_e(22), z_n2_e(22), carry_bit(22), carry_bit(23), FN_add_out(22));
		fa_23: fa port map (z_n1_e(23), z_n2_e(23), carry_bit(23), carry_bit(24), FN_add_out(23));
	   c_out <= carry_bit(24);
	
	end architecture struct;
