library ieee;
use ieee.std_logic_1164.all;

entity bus_proxy is
	port(
		bus_port : inout std_logic_vector(7 downto 0);
		en, rw: in std_logic;
		input : in std_logic_vector(7 downto 0);
		output : buffer std_logic_vector(7 downto 0)
	);
end bus_proxy;

architecture behavi of bus_proxy is
SIGNAL  a  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL  b  : STD_LOGIC_VECTOR (7 DOWNTO 0);
begin
--	PROCESS(clk)
--    BEGIN
--    IF RISING_EDGE(CLK) THEN
--        a <= input;                    
--        output <= b;                  
--        END IF;
--    END PROCESS;  
	process(en, rw, bus_port) begin
		if en = '1' then
			if rw = '0' then
				bus_port <= "ZZZZZZZZ";
				output <= bus_port;
			else
				bus_port <= input;
				end if;
		else
			bus_port <= "ZZZZZZZZ";
		end if;
	end process;
end behavi;