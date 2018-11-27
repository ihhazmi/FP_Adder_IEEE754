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

entity TwosComp24 is
    Port ( FN : in  STD_ULOGIC_VECTOR (23 downto 0);
           S : in  STD_ULOGIC;
           FN_2s : out  STD_ULOGIC_VECTOR (23 downto 0));
end TwosComp24;

architecture Behavioral of TwosComp24 is

begin

FN_2s(23) <= FN(23) XOR S;
FN_2s(22) <= FN(22) XOR S;
FN_2s(21) <= FN(21) XOR S;
FN_2s(20) <= FN(20) XOR S;
FN_2s(19) <= FN(19) XOR S;
FN_2s(18) <= FN(18) XOR S;
FN_2s(17) <= FN(17) XOR S;
FN_2s(16) <= FN(16) XOR S;
FN_2s(15) <= FN(15) XOR S;
FN_2s(14) <= FN(14) XOR S;
FN_2s(13) <= FN(13) XOR S;
FN_2s(12) <= FN(12) XOR S;
FN_2s(11) <= FN(11) XOR S;
FN_2s(10) <= FN(10) XOR S;
FN_2s(9) <= FN(9) XOR S;
FN_2s(8) <= FN(8) XOR S;
FN_2s(7) <= FN(7) XOR S;
FN_2s(6) <= FN(6) XOR S;
FN_2s(5) <= FN(5) XOR S;
FN_2s(4) <= FN(4) XOR S;
FN_2s(3) <= FN(3) XOR S;
FN_2s(2) <= FN(2) XOR S;
FN_2s(1) <= FN(1) XOR S;
FN_2s(0) <= FN(0) XOR S;

end Behavioral;


