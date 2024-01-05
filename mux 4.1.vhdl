library ieee;
use ieee.std_logic_1164.all;

entity mux is
port (
  input : std_logic_vector(3 downto 0);
  select : std_logic_vector(1 downto 0);
  output : std_logic_vector(3 downto 0)
);
end mux;

architecture arch of mux is
begin
  output <= input(select);
end arch;

architecture test of mux is
begin
  signal input : std_logic_vector(3 downto 0) := "0000";
  signal select : std_logic_vector(1 downto 0) := "00";
  signal output : std_logic_vector(3 downto 0);

  process
  begin
    input <= "0101";
    select <= "01";
    wait for 10 ns;
    output <= "1010";
    select <= "10";
    wait for 10 ns;
    input <= "1111";
    select <= "11";
    wait for 10 ns;
  end process;

end test;
