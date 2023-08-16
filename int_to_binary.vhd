LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity int_to_binary is
    port ( i : in integer;
           o : out unsigned(5 downto 0));
end int_to_binary;

architecture arc of int_to_binary is
begin
    process(i) is
    begin
        o <= to_unsigned(i, o'length);
    end process;
end architecture arc;