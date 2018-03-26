library ieee;
use ieee.std_logic_1164.all;
use work.DFFout.all;

entity muxRead is 
port (Sel : in std_logic_vector(4 downto 0);
		inputs : in DFFArray(0 to 31);	
		output : out std_logic_vector(31 downto 0));
end entity muxRead;



architecture muxofRead of muxRead is 

signal RegisterArray : DFFArray(0 to 31);

begin


MUXREADING : Process(Sel, inputs)
	begin
	
	case Sel is 
	
		when		"00000" => output <= RegisterArray(0);
		when		"00001" => output <= RegisterArray(1);
		when		"00010" => output <= RegisterArray(2);
		when		"00011" => output <= RegisterArray(3);
			
		when		"00100" => output <= RegisterArray(4);
		when		"00101" => output <= RegisterArray(5);
		when		"00110" => output <= RegisterArray(6);
		when		"00111" => output <= RegisterArray(7);
			
		when		"01000" => output <= RegisterArray(8);
		when		"01001" => output <= RegisterArray(9);
		when		"01010" => output <= RegisterArray(10);
		when		"01011" => output <= RegisterArray(11);
			
		when		"01100" => output <= RegisterArray(12);
		when		"01101" => output <= RegisterArray(13);
		when		"01110" => output <= RegisterArray(14);
		when		"01111" => output <= RegisterArray(15);
			
		when		"10000" => output <= RegisterArray(16);
		when		"10001" => output <= RegisterArray(17);
		when		"10010" => output <= RegisterArray(18);
		when		"10011" => output <= RegisterArray(19);
			
		when		"10100" => output <= RegisterArray(20);
		when		"10101" => output <= RegisterArray(21);
		when		"10110" => output <= RegisterArray(22);
		when		"10111" => output <= RegisterArray(23);
			
		when		"11000" => output <= RegisterArray(24);
		when		"11001" => output <= RegisterArray(25);
		when		"11010" => output <= RegisterArray(26);
		when		"11011" => output <= RegisterArray(27);
			
		when		"11100" => output <= RegisterArray(28);
		when		"11101" => output <= RegisterArray(29);
		when		"11110" => output <= RegisterArray(30);
		when		"11111" => output <= RegisterArray(31);
		
	end case;
	
end process MUXREADING;
	
end architecture muxofRead;