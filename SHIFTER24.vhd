----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:18 05/23/2007 
-- Design Name: 
-- Module Name:    SHIFTER - Behavioral 
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

entity SHIFTER24 is
    Port ( FN : in  STD_ULOGIC_VECTOR (22 downto 0);
           DIFF, EXP : in  STD_ULOGIC_VECTOR (7 downto 0);
           S1, S2 : in  STD_ULOGIC;
   	       FN_OUT : out  STD_ULOGIC_VECTOR (23 downto 0));
end SHIFTER24;

architecture Behavioral of SHIFTER24 is

Signal SH: std_Ulogic;
Signal ADDR: std_Ulogic_vector(7 downto 0);
Signal FN_IN: std_Ulogic_vector(23 downto 0);
begin
SH <= S1 AND S2;
process (FN, EXP)
BEGIN
	FN_IN(22 downto 0)<= FN;
	IF (FN <= "00000000000000000000000" AND EXP <= "00000000") THEN
		FN_IN(23)<='0';
	ELSE
		FN_IN(23)<='1';
	END IF;
END PROCESS;
process (S1, S2, SH, DIFF)
     	begin
		if S1 = '1' AND S2 = '0' THEN 
		   ADDR <= "11111111";
		   ELSE IF SH = '1' then
			  ADDR <= DIFF;
		   else --if CLK'event and CLK = '1' then
			  ADDR <= "00000000";
	      END if;
		END IF;	
end process;
Process (ADDR,FN_IN)
BEGIN
			case ADDR is
			when "00011000" => FN_OUT(23 DOWNTO 0)<= "000000000000000000000000";
			when "00010111" => FN_OUT(0)<= FN_IN(23); FN_OUT(23 DOWNTO 1)<= "00000000000000000000000";
			when "00010110" => FN_OUT(1 DOWNTO 0)<= FN_IN(23 DOWNTO 22); FN_OUT(23 DOWNTO 2)<= "0000000000000000000000";
			when "00010101" => FN_OUT(2 DOWNTO 0)<= FN_IN(23 DOWNTO 21); FN_OUT(23 DOWNTO 3)<= "000000000000000000000";
			when "00010100" => FN_OUT(3 DOWNTO 0)<= FN_IN(23 DOWNTO 20); FN_OUT(23 DOWNTO 4)<= "00000000000000000000";
			when "00010011" => FN_OUT(4 DOWNTO 0)<= FN_IN(23 DOWNTO 19); FN_OUT(23 DOWNTO 5)<= "0000000000000000000";
			when "00010010" => FN_OUT(5 DOWNTO 0)<= FN_IN(23 DOWNTO 18); FN_OUT(23 DOWNTO 6)<= "000000000000000000";
			when "00010001" => FN_OUT(6 DOWNTO 0)<= FN_IN(23 DOWNTO 17); FN_OUT(23 DOWNTO 7)<= "00000000000000000";
			when "00010000" => FN_OUT(7 DOWNTO 0)<= FN_IN(23 DOWNTO 16); FN_OUT(23 DOWNTO 8)<= "0000000000000000";
			when "00001111" => FN_OUT(8 DOWNTO 0)<= FN_IN(23 DOWNTO 15); FN_OUT(23 DOWNTO 9)<= "000000000000000";
			when "00001110" => FN_OUT(9 DOWNTO 0)<= FN_IN(23 DOWNTO 14); FN_OUT(23 DOWNTO 10)<= "00000000000000";
			when "00001101" => FN_OUT(10 DOWNTO 0)<= FN_IN(23 DOWNTO 13); FN_OUT(23 DOWNTO 11)<= "0000000000000";
			when "00001100" => FN_OUT(11 DOWNTO 0)<= FN_IN(23 DOWNTO 12); FN_OUT(23 DOWNTO 12)<= "000000000000";
			when "00001011" => FN_OUT(12 DOWNTO 0)<= FN_IN(23 DOWNTO 11); FN_OUT(23 DOWNTO 13)<= "00000000000";
			when "00001010" => FN_OUT(13 DOWNTO 0)<= FN_IN(23 DOWNTO 10); FN_OUT(23 DOWNTO 14)<= "0000000000";
			when "00001001" => FN_OUT(14 DOWNTO 0)<= FN_IN(23 DOWNTO 9); FN_OUT(23 DOWNTO 15)<= "000000000";
			when "00001000" => FN_OUT(15 DOWNTO 0)<= FN_IN(23 DOWNTO 8); FN_OUT(23 DOWNTO 16)<= "00000000";
			when "00000111" => FN_OUT(16 DOWNTO 0)<= FN_IN(23 DOWNTO 7); FN_OUT(23 DOWNTO 17)<= "0000000";
			when "00000110" => FN_OUT(17 DOWNTO 0)<= FN_IN(23 DOWNTO 6); FN_OUT(23 DOWNTO 18)<= "000000";
			when "00000101" => FN_OUT(18 DOWNTO 0)<= FN_IN(23 DOWNTO 5); FN_OUT(23 DOWNTO 19)<= "00000";
			when "00000100" => FN_OUT(19 DOWNTO 0)<= FN_IN(23 DOWNTO 4); FN_OUT(23 DOWNTO 20)<= "0000";
			when "00000011" => FN_OUT(20 DOWNTO 0)<= FN_IN(23 DOWNTO 3); FN_OUT(23 DOWNTO 21)<= "000";
			when "00000010" => FN_OUT(21 DOWNTO 0)<= FN_IN(23 DOWNTO 2); FN_OUT(23 DOWNTO 22)<= "00";
			when "00000001" => FN_OUT(22 DOWNTO 0)<= FN_IN(23 DOWNTO 1); FN_OUT(23)<= '0';
			when "00000000" => FN_OUT <= FN_IN;
			when OTHERS => FN_OUT <= "000000000000000000000000";
			end case;
end process;
end Behavioral;
