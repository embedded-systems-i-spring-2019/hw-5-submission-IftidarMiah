-- HW5 Iftidar Miah
-- Ch.8 Problem 7, 3 to 8 Decoder with if

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity problem6 is
  Port (    clk, Res    : in    std_logic;
            DEC_IN      : in    std_logic_vector(2 downto 0);
            MUX_IN      : in    std_logic_vector(7 downto 0);
            DEC_OUT     : out   std_logic_vector(7 downto 0));
end problem6;

architecture problem6_arch of problem6 is

begin

    process(clk)
    begin
       if rising_edge(clk) then
          if ( Res = '1') then
             DEC_OUT <= "11111111";
          else
            if (DEC_IN = "000") then
                DEC_OUT <= "11111110";
            elsif (DEC_IN = "001") then
                DEC_OUT <= "11111101";
            elsif (DEC_IN = "010") then
                DEC_OUT <= "11111011";
            elsif (DEC_IN = "011") then
                DEC_OUT <= "11110111";
            elsif (DEC_IN = "100") then
                DEC_OUT <= "11101111";
            elsif (DEC_IN = "101") then
                DEC_OUT <= "11011111";
            elsif (DEC_IN = "110") then
                DEC_OUT <= "10111111";
            elsif (DEC_IN = "111") then
                DEC_OUT <= "01111111";
            else
                DEC_OUT <= "11111111";
            end if;
          end if;
       end if;
    end process;
    
end problem6_arch;