library ieee;
use ieee.std_logic_1164.all;

entity tb_Phase_1 is
end entity tb_Phase_1;

architecture tb_Phase_1_arch of tb_Phase_1 is
	signal Clear: STD_LOGIC := '0';
	signal Clock : STD_LOGIC := '0';
	signal Iout : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal Pout : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
component Phase_1 IS
  port (  Clear, Clock :in STD_LOGIC;
			 Iout, Pout : out STD_LOGIC_VECTOR(31 DOWNTO 0));
	END component ;

	begin
		DUT: Phase_1 port map (Clear,Clock, Iout(31 DOWNTO 0), Pout(31 DOWNTO 0));
			Clock <= not Clock after 20ns;
			Clear <= '1' after 100ns,
						'0' after 300ns;
				
end tb_Phase_1_arch;