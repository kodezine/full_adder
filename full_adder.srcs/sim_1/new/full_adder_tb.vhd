-- test bench in VHDL
library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
--  Port ( );
end full_adder_tb;

architecture full_adder_tb_behave of full_adder_tb is
    -- test constants
    constant DELAY_2_NS : time := 2 ns;
    -- test signals
    signal c_in_tb  : std_logic := '0';
    signal a_in_tb  : std_logic := '0';
    signal b_in_tb  : std_logic := '0';
    signal s_out_tb : std_logic := '0';
    signal c_out_tb : std_logic := '0';
begin
    -- instantiate uut
    uut: entity work.full_adder(full_adder_behave)
    port map (
        c_in    => c_in_tb,
        a_in    => a_in_tb,
        b_in    => b_in_tb,
        s_out   => s_out_tb,
        c_out   => c_out_tb
    );
    -- generate the test stimulus
    stimulus:
    process begin
        -- start the stimulus
        c_in_tb <= '0'; a_in_tb <= '0'; b_in_tb <= '0'; wait for DELAY_2_NS;
        c_in_tb <= '0'; a_in_tb <= '0'; b_in_tb <= '1'; wait for DELAY_2_NS;
        c_in_tb <= '0'; a_in_tb <= '1'; b_in_tb <= '0'; wait for DELAY_2_NS;
        c_in_tb <= '0'; a_in_tb <= '1'; b_in_tb <= '1'; wait for DELAY_2_NS;
        c_in_tb <= '1'; a_in_tb <= '0'; b_in_tb <= '0'; wait for DELAY_2_NS;
        c_in_tb <= '1'; a_in_tb <= '0'; b_in_tb <= '1'; wait for DELAY_2_NS;
        c_in_tb <= '1'; a_in_tb <= '1'; b_in_tb <= '0'; wait for DELAY_2_NS;
        c_in_tb <= '1'; a_in_tb <= '1'; b_in_tb <= '1'; wait for DELAY_2_NS;
    end process stimulus;
end full_adder_tb_behave;