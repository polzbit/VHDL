entity t9_main is
generic(n:integer:=63);

port(clk,d:in bit;
	q:out bit_vector(n downto 0));
end;
architecture behave of t9_main is

component t9_ffd
	port(d,en: in bit;
		q: out bit);
end component;

signal x: bit_vector(n downto 0);
begin
u0: t9_ffd
	port map(en=>clk,d=>d,q=>x(0));

gen_reg: for i in 1 to n generate
	un: t9_ffd
		port map(en=>clk,d=>x(i-1),q=>x(i));
end generate gen_reg;
q<=x;
end;