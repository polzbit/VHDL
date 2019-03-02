entity t3_xor is
port(x,y:in bit;
	q: out bit);
end;
architecture behave of t3_xor is
begin
q<=x xor y;
end;