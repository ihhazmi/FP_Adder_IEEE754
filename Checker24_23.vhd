----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:42:30 05/24/2007 
-- Design Name: 
-- Module Name:    Checker24_23 - Behavioral 
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
---- any -ilin- primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Checker24_23 is
    Port ( FNA_OUT : in  STD_ULOGIC_VECTOR (23 downto 0);
           C_IN : in  STD_ULOGIC;
           C_OUT : in  STD_ULOGIC;
           FN_ADD_OUT : out  STD_ULOGIC_VECTOR (22 downto 0);
           ZEROS : out  STD_ULOGIC_VECTOR (7 downto 0);
           CH : out  STD_ULOGIC);
end Checker24_23;

architecture Behavioral of Checker24_23 is
begin

process (C_IN, FNA_OUT, C_OUT)
     	begin 
      IF C_IN = '1' THEN
		   IF FNA_OUT(23 downto 1) <= "00000000000000000000001" THEN FN_ADD_OUT(22)<= FNA_OUT(0); FN_ADD_OUT(21 DOWNTO 0)<= "0000000000000000000000"; ZEROS <= "11101001"; CH <= '1'; 
		   ELSE IF FNA_OUT(23 downto 2) <= "0000000000000000000001" THEN FN_ADD_OUT(22 DOWNTO 21)<= FNA_OUT(1 DOWNTO 0); FN_ADD_OUT(20 DOWNTO 0)<= "000000000000000000000"; ZEROS <= "11101010"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 3) <= "000000000000000000001" THEN FN_ADD_OUT(22 DOWNTO 20)<= FNA_OUT(2 DOWNTO 0); FN_ADD_OUT(19 DOWNTO 0)<= "00000000000000000000"; ZEROS <= "11101011"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 4) <= "00000000000000000001" THEN FN_ADD_OUT(22 DOWNTO 19)<= FNA_OUT(3 DOWNTO 0); FN_ADD_OUT(18 DOWNTO 0)<= "0000000000000000000"; ZEROS <= "11101100"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 5) <= "0000000000000000001" THEN FN_ADD_OUT(22 DOWNTO 18)<= FNA_OUT(4 DOWNTO 0); FN_ADD_OUT(17 DOWNTO 0)<= "000000000000000000"; ZEROS <= "11101101"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 6) <= "000000000000000001" THEN FN_ADD_OUT(22 DOWNTO 17)<= FNA_OUT(5 DOWNTO 0); FN_ADD_OUT(16 DOWNTO 0)<= "00000000000000000"; ZEROS <= "11101110"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 7) <= "00000000000000001" THEN FN_ADD_OUT(22 DOWNTO 16)<= FNA_OUT(6 DOWNTO 0); FN_ADD_OUT(15 DOWNTO 0)<= "0000000000000000"; ZEROS <= "11101111"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 8) <= "0000000000000001" THEN FN_ADD_OUT(22 DOWNTO 15)<= FNA_OUT(7 DOWNTO 0); FN_ADD_OUT(14 DOWNTO 0)<= "000000000000000"; ZEROS <= "11110000"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 9) <= "000000000000001" THEN FN_ADD_OUT(22 DOWNTO 14)<= FNA_OUT(8 DOWNTO 0); FN_ADD_OUT(13 DOWNTO 0)<= "00000000000000"; ZEROS <= "11110001"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 10)<= "00000000000001" THEN FN_ADD_OUT(22 DOWNTO 13)<= FNA_OUT(9 DOWNTO 0); FN_ADD_OUT(12 DOWNTO 0)<= "0000000000000"; ZEROS <= "11110010"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 11) <= "0000000000001" THEN FN_ADD_OUT(22 DOWNTO 12)<= FNA_OUT(10 DOWNTO 0); FN_ADD_OUT(11 DOWNTO 0)<= "000000000000"; ZEROS <= "11110011"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 12) <= "000000000001" THEN FN_ADD_OUT(22 DOWNTO 11)<= FNA_OUT(11 DOWNTO 0); FN_ADD_OUT(10 DOWNTO 0)<= "00000000000"; ZEROS <= "11110100"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 13) <= "00000000001" THEN FN_ADD_OUT(22 DOWNTO 10)<= FNA_OUT(12 DOWNTO 0); FN_ADD_OUT(9 DOWNTO 0)<= "0000000000"; ZEROS <= "11110101"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 14) <= "0000000001" THEN FN_ADD_OUT(22 DOWNTO 9)<= FNA_OUT(13 DOWNTO 0); FN_ADD_OUT(8 DOWNTO 0)<= "000000000"; ZEROS <= "11110110"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 15) <= "000000001" THEN FN_ADD_OUT(22 DOWNTO 8)<= FNA_OUT(14 DOWNTO 0); FN_ADD_OUT(7 DOWNTO 0)<= "00000000"; ZEROS <= "11110111"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 16) <= "00000001" THEN FN_ADD_OUT(22 DOWNTO 7)<= FNA_OUT(15 DOWNTO 0); FN_ADD_OUT(6 DOWNTO 0)<= "0000000"; ZEROS <= "11111000"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 17) <= "0000001" THEN FN_ADD_OUT(22 DOWNTO 6)<= FNA_OUT(16 DOWNTO 0); FN_ADD_OUT(5 DOWNTO 0)<= "000000"; ZEROS <= "11111001"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 18) <= "000001" THEN FN_ADD_OUT(22 DOWNTO 5)<= FNA_OUT(17 DOWNTO 0); FN_ADD_OUT(4 DOWNTO 0)<= "00000"; ZEROS <= "11111010"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 19) <= "00001" THEN FN_ADD_OUT(22 DOWNTO 4)<= FNA_OUT(18 DOWNTO 0); FN_ADD_OUT(3 DOWNTO 0)<= "0000"; ZEROS <= "11111011"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 20) <= "0001" THEN FN_ADD_OUT(22 DOWNTO 3)<= FNA_OUT(19 DOWNTO 0); FN_ADD_OUT(2 DOWNTO 0)<= "000"; ZEROS <= "11111100"; CH <= '1';
       		ELSE IF FNA_OUT(23 downto 21) <= "001" THEN FN_ADD_OUT(22 DOWNTO 2)<= FNA_OUT(20 DOWNTO 0); FN_ADD_OUT(1 DOWNTO 0)<= "00"; ZEROS <= "11111101"; CH <= '1';
		   ELSE IF FNA_OUT(23 downto 22) <= "01" THEN FN_ADD_OUT(22 DOWNTO 1)<= FNA_OUT(21 DOWNTO 0); FN_ADD_OUT(0)<= '0'; ZEROS <= "11111110"; CH <= '1'; -- # OF ZEROES IS COMPLEMENTED!
         ELSE IF FNA_OUT(23) <= '1' THEN FN_ADD_OUT <= FNA_OUT(22 DOWNTO 0); ZEROS <= "00000000"; CH <= '0';
         ELSE FN_ADD_OUT <= "00000000000000000000000"; ZEROS <= "00000000"; CH <= '0'; -- SPECIAL CASE (E-P=0)
         END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
		   END IF;
      ELSE 
         ZEROS <= "00000000"; CH <= '0';
         IF C_OUT = '0' THEN FN_ADD_OUT <= FNA_OUT(22 DOWNTO 0);
         ELSE FN_ADD_OUT <= FNA_OUT(23 DOWNTO 1); 
         END IF;	
	   END IF;
end process;
end Behavioral;

