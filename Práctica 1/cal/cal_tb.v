// Testbench para modulos cal
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el del paso de simulacion
module cal_tb;
//declaracion de se�ales
reg [1:0]test_s;
reg test_c_in, test_a, test_b, test_l;
wire test_out, test_c_out;

//instancia del modulo a testear, con notaci�n de posiciones de argumentos y con notaci�n de nombres
cal cal0( test_out, test_c_out, test_a, test_b, test_l, test_c_in, test_s);
//module cal(output wire out, c_out, input wire a, b, l, c_in, input wire [1:0] s);

initial
begin
  $monitor("tiempo=%0d out=%b c_out=%b a=%b b=%b l=%b c_in=%b s=%b", $time, test_out, test_c_out, test_a, test_b, test_l, test_c_in, test_s);
  $dumpfile("cal.vcd");
  $dumpvars;
  //FA sin carry in
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b0;
  test_l = 1'b0;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b0;
  test_l = 1'b0;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b1;
  test_l = 1'b0;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b1;
  test_l = 1'b0;
  test_c_in = 1'b0;
  # 20;
  //FA con carry in
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b0;
  test_l = 1'b0;
  test_c_in = 1'b1;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b0;
  test_l = 1'b0;
  test_c_in = 1'b1;
  # 20;
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b1;
  test_l = 1'b0;
  test_c_in = 1'b1;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b1;
  test_l = 1'b0;
  test_c_in = 1'b1;
  
  //CL
  //AND
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  //OR
  test_s = 2'b01;
  test_a = 1'b0;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b01;
  test_a = 1'b0;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  //XOR
  test_s = 2'b10;
  test_a = 1'b0;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b10;
  test_a = 1'b1;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b10;
  test_a = 1'b0;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b10;
  test_a = 1'b1;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  //NOT A
  test_s = 2'b11;
  test_a = 1'b0;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b11;
  test_a = 1'b1;
  test_b = 1'b0;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b11;
  test_a = 1'b0;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;
  # 20;
  test_s = 2'b11;
  test_a = 1'b1;
  test_b = 1'b1;
  test_l = 1'b1;
  test_c_in = 1'b0;

  $finish;
end

endmodule
