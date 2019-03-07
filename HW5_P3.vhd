-- HW5 Iftidar Miah
-- Ch.8 Problem 3 concurrent, conditional, or selected assignment

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity problem3 is
  Port ( A_1, A_2, B_1, B_2, D_1    : in    std_logic;
         E_out                      : out   std_logic);
end problem3;

architecture problem3_arch of problem3 is
    signal A, B, C, D_inv   : std_logic;
    signal AA, BB, BD       : std_logic_vector(1 downto 0);
    signal ABC              : std_logic_vector(2 downto 0);
begin

    BB  <= (B_1 & B_2);
    BD  <= (B_2 & D_inv);
    
    -- concurrent assignment, A = A1 and A2
    A <= (A_1 AND A_2);
    
    -- conditional assignment, B = B1 or B2
    B   <=  '1' when (BB = "01" OR BB = "10" or BB = "11") else
            '0';
            
    -- selected assignment, D_inv = not D1
    with (D_1) select
        D_inv   <=  '1' when '0',
                    '0' when '1',
                    '0' when others;
                    
    -- conditional assignment, C = B2 and D_inv
    C   <=  '1' when (BD = "11") else
            '0';
            
    -- selected assignment, E_out = A or B or C
    with (A OR B OR C) select
        E_out   <=  '1' when '1',
                    '0' when others;
    
end problem3_arch;