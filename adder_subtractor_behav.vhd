LIBRARY ieee;
LIBRARY std;
USE ieee.numeric_bit.All;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;
USE std.textio.all;

ENTITY adder_subtractor IS
  PORT(
    A, B: IN  std_logic_vector (3 DOWNTO 0);
    M:    IN  std_logic;
    S:    OUT std_logic_vector (3 DOWNTO 0);
    C:    OUT std_logic
  );
END adder_subtractor;

ARCHITECTURE behavioral OF adder_subtractor IS  
BEGIN
P1:  PROCESS(A, B, M)
    variable TEMP : std_logic_vector (4 DOWNTO 0);
    BEGIN
        if M = '0' then 
            TEMP := ('0' & A) + ('0' & B);
        else 
            TEMP := ('0' & A) - ('0' & B);
        end if;
        S <= TEMP(3 DOWNTO 0);
        C <= TEMP(4);
    END PROCESS P1;
END ARCHITECTURE behavioral;
