-- See p198 of text for overloading

library ieee;                -- Load the ieee 1164 library
use ieee.std_logic_1164.all; -- Make the ieee package 'visible'

entity EXP_ADDER is port(
	z_n1_e, z_n2_e: in std_ulogic_vector (7 downto 0);
	C_in: in std_ulogic;
	exp_add_out: out std_ulogic_vector (7 downto 0)); 
end entity EXP_ADDER;

use work.ADDER_pkg.all; -- note need to compile all sub-entities before this entity can be compiled!
	
architecture struct of EXP_ADDER is
	signal carry_bit: std_ulogic_vector(8 downto 0);
	begin
		carry_bit(0)<= C_in;
      fa_0: fa port map (z_n1_e(0), z_n2_e(0), carry_bit(0), carry_bit(1), exp_add_out(0));
		fa_1: fa port map (z_n1_e(1), z_n2_e(1), carry_bit(1), carry_bit(2), exp_add_out(1));
		fa_2: fa port map (z_n1_e(2), z_n2_e(2), carry_bit(2), carry_bit(3), exp_add_out(2));
		fa_3: fa port map (z_n1_e(3), z_n2_e(3), carry_bit(3), carry_bit(4), exp_add_out(3));
		fa_4: fa port map (z_n1_e(4), z_n2_e(4), carry_bit(4), carry_bit(5), exp_add_out(4));
		fa_5: fa port map (z_n1_e(5), z_n2_e(5), carry_bit(5), carry_bit(6), exp_add_out(5));
		fa_6: fa port map (z_n1_e(6), z_n2_e(6), carry_bit(6), carry_bit(7), exp_add_out(6));
		fa_woco_7: fa_woco port map (z_n1_e(7), z_n2_e(7), carry_bit(7), exp_add_out(7));
	end architecture struct;
