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

entity FN_MUX is
    Port ( FN1 : in  STD_ULOGIC_VECTOR (22 downto 0);
           FN2 : in  STD_ULOGIC_VECTOR (22 downto 0);
           SS1 : in  STD_ULOGIC;
           SS2 : in  STD_ULOGIC;
           FN : OUT  STD_ULOGIC_VECTOR (22 downto 0));
end FN_MUX;

architecture Behavioral of FN_MUX is

begin
PROCESS(SS1,SS2, FN1, FN2)
     	begin
		IF SS2 = '1' then
			IF SS1 = '1' then
			FN <= FN2;
		   ELSE 
			FN <= FN1;
		   END IF;
		ELSE
		   FN <= "00000000000000000000000";
		END IF;
END PROCESS;
end Behavioral;

