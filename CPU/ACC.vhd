LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ACC IS
	PORT(
		ACC_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		pend : in std_logic;
		ACC_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
		ACC_ZF : OUT STD_LOGIC
	);
END ACC;

ARCHITECTURE BEHAVI OF ACC IS
signal acc_reg : std_logic_vector(7 downto 0);
BEGIN
	process(pend)
	begin
		if PEND = '1' then
			acc_reg <= ACC_IN;
		end if;
	end process;
	ACC_OUT <= ACC_REG;
	ACC_ZF <= '1' WHEN ACC_REG = "00000000" ELSE '0';
END BEHAVI;