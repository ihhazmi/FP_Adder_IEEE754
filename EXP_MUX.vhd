----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:28:36 05/23/2007 
-- Design Name: 
-- Module Name:    EXP_MUX - Behavioral 
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

entity EXP_MUX is
    Port ( EXP1 : in  STD_ULOGIC_VECTOR (7 downto 0);
           EXP2 : in  STD_ULOGIC_VECTOR (7 downto 0);
           S : in  STD_ULOGIC;
           EXP : OUT  STD_ULOGIC_VECTOR (7 downto 0));
end EXP_MUX;

architecture Behavioral of EXP_MUX is

begin
PROCESS(S, EXP1, EXP2)
     	begin
		if S = '1' then
			EXP <= EXP2;
		else 
			EXP <= EXP1;
		END IF;
END PROCESS;
end Behavioral;

