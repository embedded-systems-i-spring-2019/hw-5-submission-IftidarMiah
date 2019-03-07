-- HW5 Iftidar Miah
-- Ch.8 Problem 6, 8 to 1 MUX with if

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity problem6 is
  Port ( SEL        : in    std_logic_vector(2 downto 0);
         MUX_IN     : in    std_logic_vector(7 downto 0);  
         MUX_OUT    : out   std_logic);
end problem6;

architecture problem6_arch of problem6 is

begin

    process (SEL, MUX_IN(0), MUX_IN(1), MUX_IN(2), MUX_IN(3),
             MUX_IN(4), MUX_IN(5), MUX_IN(6), MUX_IN(7))
    begin
        if (SEL = "000") then
            MUX_OUT <= MUX_IN(0);
        elsif (SEL = "001") then
            MUX_OUT <= MUX_IN(1);
        elsif (SEL = "010") then
            MUX_OUT <= MUX_IN(2);
        elsif (SEL = "011") then
            MUX_OUT <= MUX_IN(3);
        elsif (SEL = "100") then
            MUX_OUT <= MUX_IN(4);
        elsif (SEL = "101") then
            MUX_OUT <= MUX_IN(5);
        elsif (SEL = "110") then
            MUX_OUT <= MUX_IN(6);
        elsif (SEL = "111") then
            MUX_OUT <= MUX_IN(7);
        else 
            MUX_OUT <= MUX_IN(0);
        end if;
end process;
    
end problem6_arch;