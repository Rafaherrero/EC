// Testbench para modulo alu
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulación y la precision de la unidad
module alu_tb;
//declaracion de señales
reg [1:0] t_Op;
reg t_L;
reg [3:0] t_A, t_B;
wire [3:0] t_R;
wire t_z, t_c, /*t_v,*/ t_s;

//instancia del modulo a testear
alu mat(t_R, t_z, t_c, /*t_v,*/ t_s, t_A, t_B, t_Op, t_L);

initial
begin
  $monitor("tiempo=%0d A=%b B=%b L=%b Op=%b R=%b, Z=%b, C=%b, S=%b", $time, t_A, t_B, t_L, t_Op, t_R, t_z, t_c, /*t_v,*/ t_s);
  $dumpfile("alu_tb.vcd");
  $dumpvars;
  //vector de test 0, suma 1000 acarreo, no overflow, negativo
		//		       111
  t_A = 4'b1010;//			1010
  t_B = 4'b1110;//			1110
  t_Op = 2'b00;//			1000
  t_L = 1'b0;
  # 20;
  
  //vector de test 1 suma 0000 cero, acarreo
		//		       111
  t_A = 4'b1010;//			1010
  t_B = 4'b0110;//			0110
  t_Op = 2'b00;//			0000
  t_L = 1'b0;//				
  # 20;
  
  //vector de test 2 resta 0000 cero
		//		       11111
  t_A = 4'b1010;//			1010
  t_B = 4'b1010;//C1: 0101;		0101
  t_Op = 2'b01;//			0000
  t_L = 1'b0;//
  # 20;
  
  //vector de test 3 com2 de B 0010 (el opcode que venía estaba mal, era 1'b10 y debería ser 1'b11)
		//		          11
  t_A = 4'b1011;//			0000
  t_B = 4'b1110;//C1: 0001		0001
  t_Op = 2'b11;//			0010
  t_L = 1'b0;//
  # 20;
  
  //vector de test 4 com2 de B, overflow (el opcode que venía estaba mal, era 1'b10 y debería ser 1'b11)
		//		        1111
  t_A = 4'b1011;//			0000
  t_B = 4'b1000;//C1: 0111		0111
  t_Op = 2'b11;//			1000
  t_L = 1'b0;
  # 20;
  
  //vector de test 5 com2 de A 0010 (el opcode que venía estaba mal, era 1'b11 y debería ser 1'b10)
		//		          11
  t_A = 4'b1110;//			0000
  t_B = 4'b1010;//C1: 0001		0001
  t_Op = 2'b11;//			0010
  t_L = 1'b0;//
  # 20;
  
  //vector de test 6 com2 de A, overflow 
		//		        1111
  t_A = 4'b1000;//			0000
  t_B = 4'b1110;//C1: 0111		0111
  t_Op = 2'b11;//			1000
  t_L = 1'b0;//
  # 20;
  
  //vector de test 7 and 1000
  
  t_A = 4'b1010;//			1010
  t_B = 4'b1100;//			1100
  t_Op = 2'b00;//			1000
  t_L = 1'b1;
  # 20;
  
  //vector de test 8 xor 0110
  
  t_A = 4'b1010;//			1010
  t_B = 4'b1100;//			1100
  t_Op = 2'b10;//			0110
  t_L = 1'b1;
  # 20;
  
  //vector de test 7 inv A 0101
  
  t_A = 4'b1010;//			1010
  t_B = 4'b1100;//			1100
  t_Op = 2'b11;//			0101
  t_L = 1'b1;
  # 20;

  //fin simulacion
  $finish;
end

endmodule
