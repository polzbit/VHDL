entity t3_fa is
port(x,y,cin: in bit;
	sum,count: out bit);
end;
architecture behave of t3_fa is
begin
sum <= (x xor y) xor cin;
count <= (x and (y or cin)) or (cin and y);
end;
	