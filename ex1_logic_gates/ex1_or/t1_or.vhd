entity t1_or is
port(a,b:in bit;
q:out bit);
end;
architecture behave of t1_or is
begin
q<= a or b;
end;