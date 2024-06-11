LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CarryGen4 IS
	PORT(g, p : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  cin: IN STD_LOGIC;
		  cout : OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
END ENTITY CarryGen4;

ARCHITECTURE one OF CarryGen4 IS
	SIGNAL c : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN 
	c(0) <= cin;
	CFGEN:
	FOR i IN 1 TO 4 generate
		c(i) <= (c(i-1) AND p(i-1)) OR g(i-1);
	END generate CFGEN;
	RET:
	FOR i IN 0 TO 4 generate
		cout(i) <= c(i);
	END generate RET;
END ARCHITECTURE one;