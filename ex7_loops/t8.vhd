entity t8 is 
port(d: in bit_vector(63 downto 0);
	q: out integer range 0 to 63);
end;
architecture behave of t8 is
begin
	process(d)
	variable temp: integer;
	begin
	temp:= 0;
	reg_loop:
		for i in 0 to 63 loop
			if temp=0 then
				if d(i) = '1' then temp:= i + 1;
				end if;
			end if;
		end loop reg_loop;
	q<= temp;
end process;
end;