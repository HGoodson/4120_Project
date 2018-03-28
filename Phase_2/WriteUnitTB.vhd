library ieee;
use ieee.std_logic_1164.all;
library work;
use work.DFFout.all;

entity WriteUnitTB is
end entity WriteUnitTB;

architecture WriteUnitTB_arch of WriteUnitTB is
	signal W: STD_LOGIC := '0';
	signal CLK : STD_LOGIC := '0';
	signal RegNumber : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal RegData	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal DOut	: DFFArray(31 DOWNTO 0);
	
component WriteUnit IS
  port (  W, CLK : in STD_LOGIC;
			RegNumber	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			RegData	:	in STD_LOGIC_VECTOR(31 DOWNTO 0);
			DOut	:	out DFFArray(31 DOWNTO 0));
	END component ;

	begin
		DUT: WriteUnit port map ( W, CLK, RegNumber(4 DOWNTO 0), RegData(31 DOWNTO 0), DOut(31 DOWNTO 0));
			W <= '1' after 20ns;
			CLK <= not CLK after 20ns;
			RegNumber <= "0010" after 50ns,
										"0100" after 150ns;
			RegData <= "11110000111100001111000011110000" after 50ns;
				
end WriteUnitTB_arch;