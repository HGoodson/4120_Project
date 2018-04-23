library ieee;
use ieee.std_logic_1164.all;
use work.DFFout.all;

entity muxRead is 
port (Sel : in std_logic_vector(4 downto 0);
		inputs : in DFFArray(31 downto 0);	
		output : out std_logic_vector(31 downto 0));
end entity muxRead;



architecture muxofRead of muxRead is 

begin


MUXREADING : Process(Sel, inputs)
	begin
	
	case Sel is 
	
		when		"00000" => output <= inputs(0);
		when		"00001" => output <= inputs(1);
		when		"00010" => output <= inputs(2);
		when		"00011" => output <= inputs(3);
			
		when		"00100" => output <= inputs(4);
		when		"00101" => output <= inputs(5);
		when		"00110" => output <= inputs(6);
		when		"00111" => output <= inputs(7);
			
		when		"01000" => output <= inputs(8);
		when		"01001" => output <= inputs(9);
		when		"01010" => output <= inputs(10);
		when		"01011" => output <= inputs(11);
			
		when		"01100" => output <= inputs(12);
		when		"01101" => output <= inputs(13);
		when		"01110" => output <= inputs(14);
		when		"01111" => output <= inputs(15);
			
		when		"10000" => output <= inputs(16);
		when		"10001" => output <= inputs(17);
		when		"10010" => output <= inputs(18);
		when		"10011" => output <= inputs(19);
			
		when		"10100" => output <= inputs(20);
		when		"10101" => output <= inputs(21);
		when		"10110" => output <= inputs(22);
		when		"10111" => output <= inputs(23);
			
		when		"11000" => output <= inputs(24);
		when		"11001" => output <= inputs(25);
		when		"11010" => output <= inputs(26);
		when		"11011" => output <= inputs(27);
			
		when		"11100" => output <= inputs(28);
		when		"11101" => output <= inputs(29);
		when		"11110" => output <= inputs(30);
		when others		  => output <= inputs(31);
		
	end case;
	
end process MUXREADING;
	
end architecture muxofRead;