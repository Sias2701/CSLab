LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FAdd4 IS
	PORT(a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  cin : IN STD_LOGIC;
		  s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		  cout: OUT STD_LOGIC);
END ENTITY FAdd4;
ARCHITECTURE one OF FAdd4 IS

COMPONENT FullAdder IS
	PORT(a, b, cin : IN STD_LOGIC; s, cout : OUT STD_LOGIC);
END COMPONENT FullAdder;

SIGNAL c0, c1, c2, c3: STD_LOGIC;

BEGIN
	Unit1 : FullAdder PORT MAP(cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c0);
	Unit2 : FullAdder PORT MAP(cin=>c0, a=>a(1), b=>b(1), s=>s(1),cout=>c1);
	Unit3 : FullAdder PORT MAP(cin=>c1, a=>a(2), b=>b(2), s=>s(2),cout=>c2);
	Unit4 : FullAdder PORT MAP(cin=>c2, a=>a(3), b=>b(3), s=>s(3),cout=>cout);
END ARCHITECTURE one;