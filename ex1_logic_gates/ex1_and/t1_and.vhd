entity t1_and is
port(a,b:in bit;
q:out bit);
end;
architecture behave of t1_and is
begin
q<= a and b;
end;