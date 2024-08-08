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

ARCHITECTURE data_flow OF adder_subtractor IS
SIGNAL BXORED : std_logic_vector (3 DOWNTO 0);
SIGNAL MBAR : std_logic;
BEGIN
MBAR <= NOT M;
BXORED(3 DOWNTO 0) <= (B(3 DOWNTO 0) xor (MBAR & MBAR & MBAR & MBAR))+ MBAR;
S <= A+B when M = '0' else A-B;
C <= '0' when A>BXORED else '1';

END ARCHITECTURE data_flow;
