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

entity FNOUT_MUX is
    Port ( FN_MUX : in  STD_ULOGIC_VECTOR (22 downto 0);
           FN_CHK : in  STD_ULOGIC_VECTOR (22 downto 0);
           S : in  STD_ULOGIC;
           FN_OUT : OUT  STD_ULOGIC_VECTOR (22 downto 0));
end FNOUT_MUX;

architecture Behavioral of FNOUT_MUX is

begin
PROCESS(S, FN_MUX, FN_CHK)
     	begin
		IF S = '1' then
		   FN_OUT <= FN_MUX;
		ELSE 
			FN_OUT <= FN_CHK;
		END IF;
END PROCESS;
end Behavioral;

