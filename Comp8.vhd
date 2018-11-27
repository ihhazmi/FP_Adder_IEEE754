----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:24:14 05/19/2007 
-- Design Name: 
-- Module Name:    Comp8 - Behavioral 
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

entity Comp8 is
    Port ( EXP1 : in  STD_ULOGIC_VECTOR (7 downto 0);
           EXP2 : in  STD_ULOGIC_VECTOR (7 downto 0);
           S : out  STD_ULOGIC);
end Comp8;

architecture Behavioral of Comp8 is
signal X:std_Ulogic_vector(7 downto 1);

begin

X(7)<= EXP1(7) XNOR EXP2(7);
X(6)<= EXP1(6) XNOR EXP2(6);
X(5)<= EXP1(5) XNOR EXP2(5);
X(4)<= EXP1(4) XNOR EXP2(4);
X(3)<= EXP1(3) XNOR EXP2(3);
X(2)<= EXP1(2) XNOR EXP2(2);
X(1)<= EXP1(1) XNOR EXP2(1);
--X(0)<= EXP1(0) XNOR EXP2(0);

S <= ((NOT EXP1(7)) AND EXP2(7)) 
		OR (X(7)AND(NOT EXP1(6)) AND EXP2(6)) 
		OR (X(7)AND X(6)AND(NOT EXP1(5)) AND EXP2(5))
		OR (X(7)AND X(6)AND X(5)AND(NOT EXP1(4)) AND EXP2(4)) 
		OR (X(7)AND X(6)AND X(5)AND X(4)AND(NOT EXP1(3)) AND EXP2(3))
		OR (X(7)AND X(6)AND X(5)AND X(4)AND X(3)AND(NOT EXP1(2)) AND EXP2(2))
		OR (X(7)AND X(6)AND X(5)AND X(4)AND X(3)AND X(2)AND(NOT EXP1(1)) AND EXP2(1))
		OR (X(7)AND X(6)AND X(5)AND X(4)AND X(3)AND X(2)AND X(1)AND(NOT EXP1(0)) AND EXP2(0));

end Behavioral;

