LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
library work;
use work.DFFout.all;

entity RegisterBlock is
  port ( RegWrite, CLK	:	in STD_LOGIC;
			ReadRegister1	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			ReadRegister2	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			WriteRegister	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			WriteData		:	in STD_LOGIC_VECTOR(31 DOWNTO 0);
			ReadData1	:	out STD_LOGIC_VECTOR(31 DOWNTO 0);
			ReadData2	:	out STD_LOGIC_VECTOR(31 DOWNTO 0));
end RegisterBlock;

architecture structure of RegisterBlock is

COMPONENT WriteUnit IS
  port ( W, CLK	:	in STD_LOGIC;
			RegNumber	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			RegData	:	in STD_LOGIC_VECTOR(31 DOWNTO 0);
			DOut	:	out DFFArray(31 DOWNTO 0));
END COMPONENT ;

COMPONENT ReadEntity IS
PORT ( ReadRegister1	:	IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 ReadRegister2 	: 	IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 DOut			:	IN DFFArray(31 DOWNTO 0);
		 ReadData1	:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 ReadData2	:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT ;

signal DFFOut : DFFArray(31 DOWNTO 0);

begin --Port mapping for each device
		U1: WriteUnit port map
			(RegWrite, CLK, WriteRegister, WriteData, DFFOut);
		U2: ReadEntity port map
			(ReadRegister1, ReadRegister2, DFFOut, ReadData1, ReadData2);
end structure;