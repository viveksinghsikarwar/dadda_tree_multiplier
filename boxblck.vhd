LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY boxblck IS

PORT ( Gac,Pac,Gc1b,Pc1b : IN STD_LOGIC; 
       Gab,Pab : out STD_LOGIC );
		 
END boxblck;

ARCHITECTURE a1 of boxblck is
signal x1,y1 : std_logic;
begin

x1 <= not(Gac or (Pac and Gc1b)) after 200 ps;
Gab <= not x1 after 100 ps ;

y1 <= Pac nand Pc1b after 150 ps;
Pab <= not y1 after 100 ps;

end a1;