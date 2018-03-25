LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
ENTITY ALU IS
PORT (s  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		A,B: IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		F  : Buffer STD_LOGIC_VECTOR(31 DOWNTO 0);
		Compare: OUT STD_logic ) ;
END ALU ;
ARCHITECTURE Behavior OF ALU IS
BEGIN
	PROCESS ( s, A, B )
		BEGIN
			CASE s IS
				WHEN "0000" =>
					F <= x"00000000";
				WHEN "0001" =>
					F <= B -	 A;
				WHEN "0010" =>
					F <= A -	 B;
				WHEN "0011" =>
					F <= A + B;
				WHEN "0100" =>
					F <= A XOR B;
				WHEN "0101" =>
					F <= A OR B;
				WHEN "0110" =>
					F <= A AND B;
				WHEN OTHERS =>
					F <= x"11111111";
					--Compare <= '0';  
			END CASE;
	END PROCESS;
  process(F,s)
   begin
		if (F = x"00000000" and s = "0100") then
			Compare <= '1';
		else  
			Compare <= '0';
		end if;
	end process;
END Behavior;