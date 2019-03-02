entity t7 is
port(clk,x:in bit;
	f: out bit);
end;
architecture behave of t7 is
type state_type is (s0,s1,s2,s3);
signal state: state_type;

begin 
process(clk)
begin

if clk'event and clk='1' then
case state is

when s0=> if x='0' then
			state<= s0;
			f<='0';
		else
			state<=s1;
			f<='0';
		end if;

when s1=> if x='0' then
			state<= s0;
			f<='0';
		else
			state<=s1;
			f<='0';
		end if;
		
when s2=> if x='0' then
			state<= s3;
			f<='0';
		else
			state<=s2;
			f<='0';
		end if;
		
when s3=> if x='0' then
			state<= s0;
			f<='1';
		else
			state<=s1;
			f<='1';
		end if;
		
	end case;
	end if;
end process;
end;