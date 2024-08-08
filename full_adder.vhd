LIBRARY ieee;
LIBRARY std;
USE ieee.numeric_bit.All;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;
USE std.textio.all;

ENTITY full_adder IS
  PORT(
    A,B,Cin:    IN  std_logic;
    S,Cout:    OUT std_logic
  );
END full_adder;

ARCHITECTURE full_adder OF full_adder IS
BEGIN
S <= A xor B xor Cin;
Cout <= (A and B) or (Cin and (A xor B));
END ARCHITECTURE full_adder;
