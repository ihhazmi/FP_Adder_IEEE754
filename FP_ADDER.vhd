----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:10 05/24/2007 
-- Design Name: 
-- Module Name:    FP_ADDER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FP_ADDER is
    Port ( N1 : in  STD_ULOGIC_VECTOR (31 downto 0);
           N2 : in  STD_ULOGIC_VECTOR (31 downto 0);
           --CLK : in  STD_ULOGIC;
           ADD_OUT : out  STD_ULOGIC_VECTOR (31 downto 0));
end FP_ADDER;

use work.FP_ADDER_PKG.all; -- note need to compile all sub-entities before this entity can be compiled!

architecture Behavioral of FP_ADDER is

-- SIGNALS DECLARATION
SIGNAL S1, S2, S3, NS1, NS2, NS3, EQ, SEQ, SXOR:STD_ULOGIC;
SIGNAL ADD24_CIN,ADD24_COUT, ADD8_CIN:STD_ULOGIC;
SIGNAL CI, SH1, SH2, S2S1, S2S2, CH:STD_ULOGIC;
SIGNAL EXP12S, EXP22S, DIFF, EXP_MUX_OUT, C23, ZEROS, FEXP, ZEXP:STD_ULOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CHK_OUT, FNMUX_OUT:STD_ULOGIC_VECTOR(22 DOWNTO 0);
SIGNAL FN1SH, FN2SH, FN12S, FN22S, FN_ADD:STD_ULOGIC_VECTOR(23 DOWNTO 0);
begin

-- SIGNALS DEFINITIONS
NS1 <= NOT S1;
NS2 <= NOT S2;
NS3 <= NOT S3;
SH1 <= S1 AND S2 ;
SH2 <= NS1 AND S2;
CI <= '1';
C23 <= "00010111";
ZEXP <= "00000000";
SXOR <= N1(31)XOR N2(31);
SEQ <= SXOR NAND EQ;
S2S1 <= S3 AND SXOR;
S2S2 <= NS3 AND SXOR;
ADD24_CIN <= S2S1 OR S2S2;
ADD8_CIN <= ((NOT ADD24_CIN)AND ADD24_COUT)OR CH;
ADD_OUT(31) <= ((N1(31)AND NS3)OR(N2(31)AND S3))AND SEQ;

-- COMPONENETS PORT MAPPING
COMP8_0: Comp8 port map (N1(30 DOWNTO 23),N2(30 DOWNTO 23),S1); 
COMP24_0: Comp24 port map (FN1SH,FN2SH,S3,EQ); 
COMP8_1: Comp8 port map (DIFF,C23,S2);
TowsComp8_0: TowsComp8 port map (N1(30 DOWNTO 23),S1,EXP12S); 
TowsComp8_1: TowsComp8 port map (N2(30 DOWNTO 23),NS1,EXP22S); 
EXP_ADDER_0: EXP_ADDER port map (EXP12S,EXP22S,CI,DIFF); 
EXP_MUX_0: EXP_MUX port map (N1(30 DOWNTO 23),N2(30 DOWNTO 23),S1,EXP_MUX_OUT); 
FN_MUX_0: FN_MUX port map (N1(22 DOWNTO 0),N2(22 DOWNTO 0),S1,NS2,FNMUX_OUT); 
SHIFTER24_0: SHIFTER24 port map (N1(22 DOWNTO 0),DIFF,N1(30 DOWNTO 23),S1,S2,FN1SH); 
SHIFTER24_1: SHIFTER24 port map (N2(22 DOWNTO 0),DIFF,N2(30 DOWNTO 23),NS1,S2,FN2SH); 
TwosComp24_0: TwosComp24 port map (FN1SH,S2S1,FN12S); 
TwosComp24_1: TwosComp24 port map (FN2SH,S2S2,FN22S); 
FN_ADDER_0: FN_ADDER port map (FN12S,FN22S,ADD24_CIN,FN_ADD,ADD24_COUT); 
Checker24_23_1: Checker24_23 port map (FN_ADD,ADD24_CIN,ADD24_COUT,CHK_OUT,ZEROS,CH); 
EXP_ADDER_1: EXP_ADDER port map (EXP_MUX_OUT,ZEROS,ADD8_CIN,FEXP); 
EXP_MUX_1: EXP_MUX port map (ZEXP,FEXP,SEQ,ADD_OUT(30 DOWNTO 23)); 
FNOUT_MUX_0: FNOUT_MUX port map (FNMUX_OUT,CHK_OUT,NS2,ADD_OUT(22 DOWNTO 0)); 

end Behavioral;

