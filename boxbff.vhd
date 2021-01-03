LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY boxbff IS

PORT ( inboxbff : IN STD_LOGIC; 
       outboxbff : OUT STD_LOGIC);
END boxbff;

ARCHITECTURE a1 of boxbff is
signal x1 : std_logic;
begin

x1 <= not inboxbff after 100 ps; 
outboxbff <= not x1 after 100 ps;

end a1;