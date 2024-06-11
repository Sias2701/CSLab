-- FullAdder.vhd
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FullAdder IS
	PORT(a, b, cin : IN STD_LOGIC; s, cout : OUT STD_LOGIC);
END ENTITY FullAdder;
ARCHITECTURE one OF FullAdder IS

COMPONENT HalfAdder IS
	PORT(a, b : IN STD_LOGIC; s, c : OUT STD_LOGIC);
END COMPONENT HalfAdder;

SIGNAL d, e, f : STD_LOGIC;

BEGIN
	Unit1 : HalfAdder PORT MAP(a=>a, b=>b, c=>d, s=>e);
	Unit2 : HalfAdder PORT MAP(a=>e, b=>cin, c=>f, s=>s);
	cout <= d OR f;
END ARCHITECTURE one;