

entity t3_main is
port(op: in bit;
	a,b: in bit_vector(2 downto 0);
	q: out bit_vector( 2 downto 0);
	overflow: out bit);
end;
architecture behave of t3_main is

component t3_fa
port(x,y,cin: in bit;
	sum,count: out bit);
end component;

component t3_xor
port(x,y: in bit;
	q: out bit);
end component;

signal C1, C2, C3: bit;
signal u1,u2,u3: bit;

begin

A0: t3_xor
	port map(x=>op,y=>b(0),q=>u1);
A1: t3_xor
	port map(x=>op,y=>b(1),q=>u2);
A2: t3_xor
	port map(x=>op,y=>b(2),q=>u3);
	
FA0: t3_fa 
	port map(x=> a(0),y=> u1, cin=> op,sum=> q(0), count=> C1);
FA1: t3_fa 
	port map(x=> a(1),y=> u2, cin=> C1,sum=> q(1), count=> C2);
FA2: t3_fa
	port map(x=> a(2),y=> u3, cin=> C2,sum=> q(2), count=> C3);
	
qout: t3_xor
	port map(x=>C2,y=>C3,q=>overflow);
	

end;