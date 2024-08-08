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

ARCHITECTURE arch OF adder_subtractor IS

component full_adder IS
  PORT(
    A,B,Cin:    IN  std_logic;
    S,Cout:    OUT std_logic
  );
END component full_adder;

signal C0 , C1 , C2 : std_logic;
signal BXORED : std_logic_vector (3 DOWNTO 0);
BEGIN
    BXORED(3 DOWNTO 0) <= B(3 DOWNTO 0) xor (M & M & M & M);
    FULLADD0:full_adder PORT MAP (A=>A(0),B => BXORED(0),Cin => M  , S => S(0) , Cout => C0);
    FULLADD1:full_adder PORT MAP (A=>A(1),B => BXORED(1),Cin => C0 , S => S(1) , Cout => C1);
    FULLADD2:full_adder PORT MAP (A=>A(2),B => BXORED(2),Cin => C1 , S => S(2) , Cout => C2);
    FULLADD3:full_adder PORT MAP (A=>A(3),B => BXORED(3),Cin => C2 , S => S(3) , Cout => C );

END ARCHITECTURE arch;
