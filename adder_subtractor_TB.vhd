LIBRARY std;
LIBRARY ieee;
USE ieee.numeric_bit.All;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;
USE std.textio.all;

ENTITY adder_subtractor_tb is 
end ENTITY adder_subtractor_tb;

ARCHITECTURE tb of adder_subtractor_tb is 

component adder_subtractor IS
  PORT(
    A, B: IN  std_logic_vector (3 DOWNTO 0);
    M:    IN  std_logic;
    S:    OUT std_logic_vector (3 DOWNTO 0);
    C:    OUT std_logic
  );
END component; 

FOR UT :adder_subtractor USE ENTITY WORK.adder_subtractor (behavioral);

    signal A, B:   std_logic_vector (3 DOWNTO 0);
    signal M:      std_logic;
    signal S:     std_logic_vector (3 DOWNTO 0);
    signal C:     std_logic;

begin 
    UT : adder_subtractor 
    port map (A,B,M,S,C);

    p2 : PROCESS
    file in_file : text open read_mode is "D:\in.txt";
    file out_file : text open write_mode is "D:\out.txt";
    variable input_line : line;
    variable output_line : line ;
    variable A_f, B_f:   std_logic_vector (3 DOWNTO 0);
    variable M_f:      std_logic;
    variable S_f:     std_logic_vector (3 DOWNTO 0);
    variable C_f:     std_logic;

    begin 
        while (not endfile(in_file)) loop
            wait for 5 ns;
            readline(in_file , input_line);
            read(input_line , A_f);
            read(input_line , B_f);
            read(input_line , M_f);

            A <= A_f;
            B <= B_f;
            M <= M_f;

            wait for 15 ns ;

            S_f := S;
            C_f := C;
            

            write (output_line , string'("time = "));
            write (output_line , now);
            write (output_line , string'("  A = "));
            write (output_line ,A_f);
            write (output_line ,string'("   B = "));
            write (output_line ,B_f);
            write (output_line ,string'("   M = "));
            write (output_line ,M_f);
            write (output_line , string'("  carry_out = "));
            write (output_line , C_f);
            write (output_line , string'("  sum = "));
            write (output_line ,S_f);
            writeline (out_file , output_line);
            wait for 5 ns;

            end loop;

            wait;
    end PROCESS p2;
end ARCHITECTURE tb;



