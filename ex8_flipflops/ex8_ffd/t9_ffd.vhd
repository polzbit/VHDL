entity t9_ffd is
port(d,en: in bit;
	q:out bit);
end;
architecture behave of t9_ffd is
begin
process(en)
begin
if en'event and en='1' then
q<=d;
end if;
end process;
end;