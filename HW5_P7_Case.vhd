-- HW5 Iftidar Miah
-- Ch.8 Problem 7, 3 to 8 Decoder with case

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
             case DEC_IN is
                when "000"  =>  DEC_OUT <= "11111110";
                when "001"  =>  DEC_OUT <= "11111101";
                when "010"  =>  DEC_OUT <= "11111011";
                when "011"  =>  DEC_OUT <= "11110111";
                when "100"  =>  DEC_OUT <= "11101111";
                when "101"  =>  DEC_OUT <= "11011111";
                when "110"  =>  DEC_OUT <= "10111111";
                when "111"  =>  DEC_OUT <= "01111111";
                when others =>  DEC_OUT <= "11111111";
             end case;
          end if;
       end if;
    end process;
    
end problem6_arch;