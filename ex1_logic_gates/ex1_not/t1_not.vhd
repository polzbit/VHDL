entity t1_not
is
port(a:in bit;
	q: out bit);
end;
architecture behave of t1_not is
begin
q<= not a;
end;