library ieee;                -- Load the ieee 1164 library
use ieee.std_logic_1164.all; -- Make the ieee package 'visible'

package FP_ADDER_PKG is
	component Comp8 port (
	   EXP1 : in  STD_ULOGIC_VECTOR (7 downto 0);
      EXP2 : in  STD_ULOGIC_VECTOR (7 downto 0);
      S : out  STD_ULOGIC);
   end component;
   
   component Comp24 port (
	   FN1 : in  STD_ULOGIC_VECTOR (23 downto 0);
      FN2 : in  STD_ULOGIC_VECTOR (23 downto 0);
      S, EQ : out  STD_ULOGIC);
   end component;
   
   component TowsComp8 port (
	   EXP : in  STD_ULOGIC_VECTOR (7 downto 0);
      S : in  STD_ULOGIC;
      EXP_2s : out  STD_ULOGIC_VECTOR (7 downto 0));
   end component;
   
   component TwosComp24 port (
	   FN : in  STD_ULOGIC_VECTOR (23 downto 0);
      S : in  STD_ULOGIC;
      FN_2s : out  STD_ULOGIC_VECTOR (23 downto 0));
   end component;
   
   component SHIFTER24 port (
	   FN : in  STD_ULOGIC_VECTOR (22 downto 0);
      DIFF, EXP : in  STD_ULOGIC_VECTOR (7 downto 0);
      S1, S2 : in  STD_ULOGIC;
      FN_OUT : out  STD_ULOGIC_VECTOR (23 downto 0));
   end component;
   
   component EXP_ADDER port (
	   z_n1_e, z_n2_e: in std_ulogic_vector (7 downto 0);
	   C_in: in std_ulogic;
	   exp_add_out: out std_ulogic_vector (7 downto 0));
   end component;
   
   component FN_ADDER port (
	   z_n1_e, z_n2_e: in std_ulogic_vector (23 downto 0); 
	   C_in: in std_ulogic;
	   FN_add_out: out std_ulogic_vector (23 downto 0); 
	   C_out: out std_ulogic);
   end component;
   
   component EXP_MUX port (
	   EXP1 : in  STD_ULOGIC_VECTOR (7 downto 0);
      EXP2 : in  STD_ULOGIC_VECTOR (7 downto 0);
      S : in  STD_ULOGIC;
      EXP : OUT  STD_ULOGIC_VECTOR (7 downto 0));
   end component;
   
   component FN_MUX port (
      FN1 : in  STD_ULOGIC_VECTOR (22 downto 0);
      FN2 : in  STD_ULOGIC_VECTOR (22 downto 0);
      SS1 : in  STD_ULOGIC;
      SS2 : in  STD_ULOGIC;
      FN : OUT  STD_ULOGIC_VECTOR (22 downto 0));
   end component;
         
   component FNOUT_MUX Port (
      FN_MUX : in  STD_ULOGIC_VECTOR (22 downto 0);
      FN_CHK : in  STD_ULOGIC_VECTOR (22 downto 0);
      S : in  STD_ULOGIC;
      FN_OUT : OUT  STD_ULOGIC_VECTOR (22 downto 0));
   end component;
   
   component Checker24_23 port (
      FNA_OUT : in  STD_ULOGIC_VECTOR (23 downto 0);
      C_IN : in  STD_ULOGIC;
      C_OUT : in  STD_ULOGIC;
      FN_ADD_OUT : out  STD_ULOGIC_VECTOR (22 downto 0);
      ZEROS : out  STD_ULOGIC_VECTOR (7 downto 0);
      CH : out  STD_ULOGIC);
   end component;
         
end FP_ADDER_PKG;

             
            

 