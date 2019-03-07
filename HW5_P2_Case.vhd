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
        case (AA) is
            when "11"   => A <= '1';
            when others => A <= '0';
        end case;
    end process A_proc;
    
    B_proc: process(BB)     -- B1 or B2
    begin
        case (BB) is
            when "00"   => B <= '0';
            when others => B <= '1';
        end case;
    end process B_proc;
    
    C_proc: process(BD)     -- B2 and (not D1) = B2 and D_inv
    begin
        case (BD) is
            when "1"    => C <= '1';
            when others => C <= '0';
        end case;
    end process C_proc;
    
    D_proc: process(D_1)     -- not D1
    begin
        case (D_1) is
            when '1'    => D_inv <= '0';
            when others => D_inv <= '1';
        end case;
    end process D_proc;
    
    E_proc: process(ABC)    -- A or B or C
    begin
        case (ABC) is
            when "000"  => E_out <= '0';
            when others => E_out <= '1';
        end case;   
    end process E_proc;

end problem2_arch;