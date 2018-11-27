----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:26 05/19/2007 
-- Design Name: 
-- Module Name:    2sComp8_1 - Behavioral 
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

entity TowsComp8 is
    Port ( EXP : in  STD_ULOGIC_VECTOR (7 downto 0);
           S : in  STD_ULOGIC;
           EXP_2s : out  STD_ULOGIC_VECTOR (7 downto 0));
end TowsComp8;

architecture Behavioral of TowsComp8 is

begin
EXP_2s(7) <= EXP(7) XOR S;
EXP_2s(6) <= EXP(6) XOR S;
EXP_2s(5) <= EXP(5) XOR S;
EXP_2s(4) <= EXP(4) XOR S;
EXP_2s(3) <= EXP(3) XOR S;
EXP_2s(2) <= EXP(2) XOR S;
EXP_2s(1) <= EXP(1) XOR S;
EXP_2s(0) <= EXP(0) XOR S;

end Behavioral;

