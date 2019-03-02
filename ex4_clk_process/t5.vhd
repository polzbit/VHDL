entity t5 is

generic(border:integer:=100);

port(clk,reset,ud: in bit;
	q:out integer range 0 to border);
end;
architecture behave of t5 is
begin
process(clk,reset)
variable n: integer range 0 to border;
begin
if reset='1' then n:=0;
elsif clk'event and clk='1' then
if ud='1' then
	n:= n+1;
	if n=border then
		n:=0;
	end if;
else
	n:=n-1;
end if;
if n=0 then
	n:=border;
end if;
end if;
q<=n;
end process;
end;