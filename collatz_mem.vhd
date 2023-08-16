LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity collatz_mem is
    port ( mem : in std_logic;
           i, prev : in integer;
           o : out integer);
end collatz_mem;

architecture arc of collatz_mem is
begin
    process(i, mem) is
    begin
        if mem = '1' then
            o <= prev;
        elsif mem = '0' then
            o <= i;
        end if;
    end process;
end architecture arc;