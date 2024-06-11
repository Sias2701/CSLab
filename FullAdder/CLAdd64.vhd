LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CLAdd64 IS
	PORT(a, b : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		  cin : IN STD_LOGIC;
		  s : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		  cout : OUT STD_LOGIC);
END ENTITY CLAdd64;

ARCHITECTURE one OF CLAdd64 IS
	COMPONENT HalfAdder IS
		PORT(a, b : IN STD_LOGIC; s, c : OUT STD_LOGIC);
	END COMPONENT HalfAdder;
	COMPONENT CarryGen64 IS
	PORT(g, p : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		  cin: IN STD_LOGIC;
		  cout : OUT STD_LOGIC_VECTOR(64 DOWNTO 0));
	END COMPONENT CarryGen64;
	SIGNAL g, p : STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL c : STD_LOGIC_VECTOR(64 DOWNTO 0);
BEGIN
	HADD: 
	FOR i IN 0 TO 63 generate
		UnitHA: HalfAdder PORT MAP(a=>a(i), b=>b(i), s=>p(i), c=>g(i));
	END generate HADD;
	
	UnitCG: CarryGen64 PORT MAP(g=>g, p=>p, cin=>cin, cout=>c);
	OUTPUT:
	FOR i IN 0 TO 63 generate
		s(i) <= c(i) XOR p(i);
	END generate OUTPUT;
	cout <= c(64);
END ARCHITECTURE one;