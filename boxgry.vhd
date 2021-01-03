LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY boxgry IS

PORT ( Gac,Pac,Gcab : IN STD_LOGIC; 
       Gab : out STD_LOGIC );
END boxgry;

ARCHITECTURE a1 of boxgry is
signal x1 : std_logic;
begin

x1 <= not (Gac or (Pac and Gcab)) after 200 ps;
Gab <= not x1 after 100 ps;

end a1;