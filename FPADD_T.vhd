
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:37 05/28/2007
-- Design Name:   FP_ADDER
-- Module Name:   C:/Documents and Settings/TOSHIBA/Desktop/Project/DESIGN/FP_ADDER_XILINX/FP_ADDER_X/FP_ADDER_X/FPADD_T.vhd
-- Project Name:  FP_ADDER_X
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FP_ADDER
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY FPADD_T_vhd IS
END FPADD_T_vhd;

ARCHITECTURE behavior OF FPADD_T_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT FP_ADDER
	PORT(
		N1 : IN std_ulogic_vector(31 downto 0);
		N2 : IN std_ulogic_vector(31 downto 0);
		ADD_OUT : OUT std_ulogic_vector(31 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL N1 :  std_ulogic_vector(31 downto 0) := (others=>'0');
	SIGNAL N2 :  std_ulogic_vector(31 downto 0) := (others=>'0');

	--Outputs
	SIGNAL ADD_OUT :  std_ulogic_vector(31 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: FP_ADDER PORT MAP(
		N1 => N1,
		N2 => N2,
		--CLK => CLK,
		ADD_OUT => ADD_OUT
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		
		N1 <= "01000111010011001000111000011111";
		N2 <= "11000011111000111000111001100111";
		-- N3="01000111010010101100011100000011",    52366.12109375 + (-455.1125183105469) = 51911.01171875

		wait for 100 ns;
		
		N1 <= "01000010110010000000000000000000";
		N2 <= "01000001101000000000000000000000";
		-- N3="01000010111100000000000000000000",    100 + 20 = 120
		wait for 100 ns;
		
		N1 <= "11000010010010000000000000000000";
		N2 <= "01000000100000000000000000000000";
		-- N3="11000010001110000000000000000000",    -50 + 4 = -46
		wait for 100 ns;
		
		N1 <= "11000100000001110000000000000000";
		N2 <= "10111111100000000000000000000000";
                -- N3="11000100000001110100000000000000",    -540 + (-1) = -541
		wait for 100 ns;
		
		N1 <= "01000001001000000000000000000000";
		N2 <= "01000010001000000000000000000000";
		-- N3="01000010010010000000000000000000",    10 + 40= 50
		wait for 100 ns;
		
		N1 <= "00111111110100000000000000000000";
		N2 <= "10111111101000000000000000000000";
		-- N3="00111110110000000000000000000000",    1.625 + (-1.25) = 0.375
		wait for 100 ns;
		
		N1 <= "00000000000000000000000000000000";
		N2 <= "00000000000000000000000000000000";
		-- N3="00000000000000000000000000000000",    0 + 0 = 0
		wait for 100 ns;
		
		N1 <= "01000001001000000000000000000000";
		N2 <= "01000001001000000000000000000000";
		-- N3="01000001101000000000000000000000",    10 + 10 = 20
		wait for 100 ns;
		
		N1 <= "01000000100000000000000000000000";
		N2 <= "11000000100000000000000000000000";
		-- N3="00000000000000000000000000000000",    4 + (-4) = 0.375
		wait for 100 ns;
		

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
