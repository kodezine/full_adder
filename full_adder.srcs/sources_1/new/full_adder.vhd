library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port (
        a_in    : in    std_logic;
        b_in    : in    std_logic;
        c_in    : in    std_logic;
        s_out   : out   std_logic;
        c_out   : out   std_logic
    );
end full_adder;

architecture full_adder_behave of full_adder is
begin
-- compute the sum
    s_out   <= a_in xor b_in xor c_in;
-- compute the carry
    c_out   <= (a_in and b_in) or (a_in and c_in) or (b_in and c_in); 
end full_adder_behave;
