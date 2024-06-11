LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CLAdd4 IS
	PORT(a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  cin : IN STD_LOGIC;
		  s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		  cout : OUT STD_LOGIC);
END ENTITY CLAdd4;

ARCHITECTURE one OF CLAdd4 IS
	COMPONENT HalfAdder IS
		PORT(a, b : IN STD_LOGIC; s, c : OUT STD_LOGIC);
	END COMPONENT HalfAdder;
	COMPONENT CarryGen4 IS
	PORT(g, p : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  cin: IN STD_LOGIC;
		  cout : OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
	END COMPONENT CarryGen4;
	SIGNAL g, p : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL c : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
	HADD: 
	FOR i IN 0 TO 3 generate
		UnitHA: HalfAdder PORT MAP(a=>a(i), b=>b(i), s=>p(i), c=>g(i));
	END generate HADD;
	
	UnitCG: CarryGen4 PORT MAP(g=>g, p=>p, cin=>cin, cout=>c);
	OUTPUT:
	FOR i IN 0 TO 3 generate
		s(i) <= c(i) XOR p(i);
	END generate OUTPUT;
	cout <= c(4);
END ARCHITECTURE one;