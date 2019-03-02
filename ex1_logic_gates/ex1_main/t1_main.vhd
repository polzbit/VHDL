entity t1_main is
port(x1,x2:in bit;
	f:out bit);
end;
architecture behave of t1_main is
component t1_or
port(a,b:in bit;
q:out bit);
end component;

component t1_and
port(a,b:in bit;
q:out bit);
end component;

component t1_not
port(a:in bit;
q:out bit);
end component;

signal s1,s2,s3,s4: bit;
begin

u1: t1_not
	port map(a=> x1,q=>s1);
u2: t1_not
	port map(a=>x2,q=>s2);
u3:t1_and
	port map(a=> x1,b => s2, q=>s3);
u4:t1_and
	port map(a=> x2,b => s1, q=>s4);
u5: t1_or
	port map(a=>s3,b=> s4, q=> f);
end;