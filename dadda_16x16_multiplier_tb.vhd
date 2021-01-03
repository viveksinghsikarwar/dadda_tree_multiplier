LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


entity dadda_16x16_multiplier_tb is
 
end dadda_16x16_multiplier_tb ;


architecture arc of dadda_16x16_multiplier_tb is

COMPONENT dadda_16x16_multiplier

PORT(A,B: IN std_logic_vector(15 downto 0);
     M: OUT std_logic_vector(31 downto 0));

END COMPONENT;

 signal M: std_logic_vector(31 downto 0) ;
 signal A, B: std_logic_vector(15 downto 0) ;
 
BEGIN

uut: dadda_16x16_multiplier PORT MAP (A=>A, B=>B,M=>M);

stim_proc: process

begin

A <= "1010101111100001";
B <= "1111111111111111";

wait for 15 ns;

A <= "1111111111111111";
B <= "1111111111111111";

wait for 15 ns;

 
A <= "0001001000110100";
B <= "1010101111001101";

wait for 15 ns;


A <= "1111000001010000";
B <= "1111111100011000";

wait for 15 ns;
A <= "1010001001011010";
B <= "1100110011101100";

wait for 10 ns;
A <= "0011011001110101";
B <= "0001111010100011";

wait for 20 ns;
A <= "0011001011110101";
B <= "0001110000100011";

wait for 20 ns;
A <= "0011011111110101";
B <= "0001111000100011";

wait for 20 ns;

END process;
 
END arc;