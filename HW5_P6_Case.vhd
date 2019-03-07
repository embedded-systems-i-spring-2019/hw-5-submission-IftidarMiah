-- HW5 Iftidar Miah
-- Ch.8 Problem 6, 8 to 1 MUX with case

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
       case (SEL) is
          when "000" => MUX_OUT     <= MUX_IN(0);
          when "001" => MUX_OUT     <= MUX_IN(1);
          when "010" => MUX_OUT     <= MUX_IN(2);
          when "011" => MUX_OUT     <= MUX_IN(3);
          when "100" => MUX_OUT     <= MUX_IN(4);
          when "101" => MUX_OUT     <= MUX_IN(5);
          when "110" => MUX_OUT     <= MUX_IN(6);
          when "111" => MUX_OUT     <= MUX_IN(7);
          when others => MUX_OUT    <= MUX_IN(0);
       end case;
end process;
    
end problem6_arch;