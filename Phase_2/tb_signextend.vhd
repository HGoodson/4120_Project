library ieee;
use ieee.std_logic_1164.all;


entity tb_signextend is
end entity tb_signextend;

architecture behavior of tb_signextend is

	signal tinput	: std_logic_vector(15 downto 0);
	signal toutput	: std_logic_vector(31 downto 0);

	component SignExtendProject is
		port(	input		:in Std_logic_vector(15 downto 0);
				output	:out std_logic_vector(31 downto 0));
	end component;
	
	begin
		DUT:	SignExtendProject port map (tinput,toutput);

		tinput <= 	"0000000000000000",
						"0000000011111111" after 300 ns,
						"1111111100000000" after 600 ns,
						"1111111111111111" after 900 ns;

end architecture behavior;