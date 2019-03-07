-- HW5 Iftidar Miah
-- Ch.8 Problem 2 if statement

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity problem2 is
  Port ( A_1, A_2, B_1, B_2, D_1    : in    std_logic;
         E_out                      : out   std_logic);
end problem2;

architecture problem2_arch of problem2 is
    signal A, B, C, D_inv   : std_logic;
    signal AA, BB, BD       : std_logic_vector(1 downto 0);
    signal ABC              : std_logic_vector(2 downto 0);
begin
    
    AA  <= (A_1 & A_2);
    BB  <= (B_1 & B_2);
    BD  <= (B_2 & D_inv);
    ABC <= A & B & C;
    
    A_proc: process(AA)     -- A1 and A2
    begin
        if (AA = "11") then
            A <= '1';
        else
            A <= '0';
        end if;
    end process A_proc;
    
    B_proc: process(BB)     -- B1 or B2
    begin
        if (BB = "00") then
            B <= '0';
        else
            B <= '1';
        end if;
    end process B_proc;
    
    C_proc: process(BD)     -- B2 and (not D1) = B2 and D_inv
    begin
        if (BD = "11") then
            C <= '1';
        else
            C <= '0';
        end if;
    end process C_proc;
    
    D_proc: process(D_1)     -- not D1
    begin
        if (D_1 = '1') then
            D_inv <= '0';
        else
            D_inv <= '1';
        end if;
    end process D_proc;
    
    E_proc: process(ABC)    -- A or B or C
    begin
        if (ABC = "000") then
            E_out <= '0';
        else
            E_out <= '1';
        end if;
    end process E_proc;

end problem2_arch;