library ieee;
use ieee.std_logic_1164.all;


entity ForwardUnit is 
port(EXMEMRD : in std_logic_vector(31 downto 0);
	  MEMWBRD : in std_logic_vector(31 downto 0);
	  IDEXRT : in std_logic_vector(31 downto 0);
	  IDEXRS : in std_logic_vector(31 downto 0);
	  ForwardA  : out std_logic_vector(1 downto 0);
	  ForwardB  : out std_logic_vector(1 downto 0));
end entity ForwardUnit;



architecture arch_ForwardUnit of ForwardUnit is

--signal ForwardA : std_logic_vector(1 downto 0);
--signal ForwardB : std_logic_vector(1 downto 0);
signal test : std_logic;

begin

process(EXMEMRD,MEMWBRD,IDEXRT,IDEXRS)
begin





--For EX forwarding Unit
if(EXMEMRD /= "0000000000000000000000000000000000000") and (EXMEMRD = IDEXRS) then
ForwardA <= "10";
end if;
if(EXMEMRD /= "0000000000000000000000000000000000000") and (EXMEMRD = IDEXRT) then
ForwardB <= "10";
end if;
--For MEM forwarding Unit

if ((MEMWBRD /= "0000000000000000000000000000000000000") and (EXMEMRD /= IDEXRS) and (MEMWBRD = IDEXRS)) then
ForwardA <= "01";
end if;
if (MEMWBRD /= "0000000000000000000000000000000000000") and (EXMEMRD /= IDEXRT) and (MEMWBRD = IDEXRT) then
ForwardB <= "01";
end if;

end process;

end architecture arch_ForwardUnit;