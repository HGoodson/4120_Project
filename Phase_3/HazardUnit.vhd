library ieee;
use ieee.std_logic_1164.all;

entity HazardUnit is
	port(	Clock, IDEXMemRead				:	in	std_logic;
			IDEXRegister						:	in std_logic_vector(31 downto 0); --signal InstructionOut bits 20-16
			PCInstructionIn					: 	in std_logic_vector(31 downto 0);
			IFIDWriteEn, PCWriteEn			:	out std_logic	:= '1'; 
			Control0s							: 	out std_logic	:=	'0' );	
end HazardUnit;

architecture structure of HazardUnit is

	signal IDEXRegisterRt	:	std_logic_vector(4 downto 0);
	signal IFIDRegisterRs	:	std_logic_vector(4 downto 0);
	signal IFIDRegisterRt	:	std_logic_vector(4 downto 0);

	begin
			
			IDEXRegisterRt <= IDEXRegister(20 downto 16);
			IFIDRegisterRt <=	PCInstructionIn(25 downto 21);
			IFIDRegisterRs <= PCInstructionIn(20 downto 16);
			
			
			process(Clock)
				begin
						if(Clock'event and Clock = '1' and IDEXMemRead = '1') then
							
							if(IDEXRegisterRt = IFIDRegisterRs) then
								IFIDWriteEn <= '0';
								PCWriteEn <= '0';
								Control0s <= '1';							
							elsif(IDEXRegisterRt = IFIDRegisterRt) then
								IFIDWriteEn <= '0';
								PCWriteEn <= '0';
								Control0s <= '1';							
							else
								IFIDWriteEn <= '1';
								PCWriteEn <= '1';
								Control0s <= '0';
							end if;					
						end if;						
				end process;
end structure;
	