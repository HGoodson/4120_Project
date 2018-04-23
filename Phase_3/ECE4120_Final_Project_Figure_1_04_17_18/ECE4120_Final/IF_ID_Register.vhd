library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IF_ID_Register is
	port( Clock: in std_logic;
			PCAdd_In,Instruction_In: in std_logic_vector(31 downto 0);
			PCAdd_Out,Instruction_Out: out std_logic_vector(31 downto 0));
end IF_ID_Register;

architecture structure of IF_ID_Register is
	begin
		process(Clock)
		begin
				if(Clock'event and Clock = '1') then
					PCAdd_Out <= PCAdd_In;
					Instruction_Out <= Instruction_In;
				end if;
		end process;
end structure;
		