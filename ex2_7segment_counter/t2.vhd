entity t2 is
port(datain: in bit_vector(3 downto 0);
	en:in bit;
	q: out bit_vector(7 downto 0));
end;
architecture behave of t2 is
begin
	
q<= "11000000" when datain="0000" and en ='1' else
	"11111001" when datain="0001" and en ='1' else
	"10100100" when datain="0010" and en ='1' else
	"10110000" when datain="0011" and en ='1' else
	"10011001" when datain="0100" and en ='1' else
	"10010010" when datain="0101" and en ='1' else
	"10000010" when datain="0110" and en ='1' else
	"11111000" when datain="0111" and en ='1' else
	"10000000" when datain="1000" and en ='1' else
	"10011000" when datain="1001" and en ='1' else
	"11111111" when en='0' else
	"10001110";
	
end;