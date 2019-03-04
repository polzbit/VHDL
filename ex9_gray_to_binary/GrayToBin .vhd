--VHDL code to convert Gray code to binary --

library ieee;

 	entity GrayToBin is
		port(
		--g is the Graycode input
		g:in bit_vector(3 downto 0);
		--b is the binary output
		b:out bit_vector(3 downto 0)
		);
	end GrayToBin;
	
	architecture dataflow of GrayToBin is
	begin
		b(3)<=g(3);
		b(2)<=g(3) xor g(2);
		b(1)<=g(3) xor g(2) xor g(1);
		b(0)<=g(3) xor g(2) xor g(1) xor g(0);
		
	end dataflow;