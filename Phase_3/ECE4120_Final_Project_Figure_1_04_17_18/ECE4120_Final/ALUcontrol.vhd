library ieee;
use ieee.std_logic_1164.all;

entity ALU_Control is
	port(	inst: in std_logic_vector (5 downto 0);
			ALUControl : in std_logic_vector (1 downto 0);
			ALUOp	: out std_logic_vector (3 downto 0));
end ALU_Control;

architecture arch of ALU_Control is
begin
	ALUCase : process(ALUControl, inst)
	begin
	case ALUControl is
		when "00" =>
			ALUOp <= "0010";
		when "01" =>
			ALUOp <= "0110";
		when "10" =>
			case inst is
				when "100000" =>
					ALUOp <= "0010";
				when "100010" =>
					ALUOp <= "0110";
				when "100100" =>
					ALUOp <= "0000";
				when "100101" =>
					ALUOp <= "0001";
				when "101010" =>
					ALUOp <= "0111";
				when others =>
					ALUOp <= "XXXX";
			end case;
		when others =>
			ALUOp <= "XXXX";
		end case;
	end process;
end arch;