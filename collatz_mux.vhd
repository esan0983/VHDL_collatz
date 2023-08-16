LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity collatz_mux is
    port ( clk : in std_logic;
           i : in integer;
           o : out integer);
end collatz_mux;

architecture arc of collatz_mux is
    signal sel : std_logic;
begin
    process(i) is
    begin
        if i mod 2 = 0 then
            sel <= '0';
        else
            sel <= '1';
        end if;
    end process;

    process(clk) is
    begin
        if rising_edge(clk) then
            case(sel) is
                when '0' =>
                    o <= i / 2;
                when '1' =>
                    o <= i * 3 + 1;
                when others =>
                    report "Error";
            end case;
        end if;
    end process;
end architecture arc;