LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity binary_to_int is
    port ( i1, i2, i3, clk: in std_logic;
           o: out integer := 0 );
end binary_to_int;

architecture arc of binary_to_int is
    signal temp : integer := 0;
begin
    process(i1, i2, i3) is
    begin
        temp <= 0;
        if i1 = '1' then
            temp <= temp + 1;
        end if;

        if i2 = '1' then
            temp <= temp + 2;
        end if;

        if i3 = '1' then
            temp <= temp + 4;
        end if;
    end process;

    process(clk) is
    begin
        if rising_edge(clk) then
            o <= temp;
        end if;
    end process;
end architecture arc;