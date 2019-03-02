entity t6 is
port(clk:in bit;
	q: out integer range 0 to 8);
end;
architecture behave of t6 is
type state_type is(s0,s1,s2,s3,s4,s5);
signal state: state_type;
begin
process(clk)
begin
if clk'event and clk='1' then
case state is
when s0=>state<=s1;
when s1=>state<=s2;
when s2=>state<=s3;
when s3=>state<=s4;
when s4=>state<=s5;
when s5=>state<=s0;
end case;
end if;
end process;

with state select
q<= 8 when s0,
4 when s1,
5 when s2,
6 when s3,
2 when s4,
5 when s5;
end;