LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY IR IS
	PORT(
		IR_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		pend : in std_logic;
		IR_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END IR;

ARCHITECTURE BEHAVI OF IR IS
signal ir_reg : std_logic_vector(7 downto 0);
BEGIN
	process(pend)
	begin
		if pend = '1' then
			ir_reg <= IR_IN;
		end if;
	end process;
	IR_OUT <= ir_reg;
END BEHAVI;