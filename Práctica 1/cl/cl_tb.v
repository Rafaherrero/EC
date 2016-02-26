// Testbench para modulos cl
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el del paso de simulacion
module cl_tb;
//declaracion de se�ales
reg [1:0]test_s;
reg test_a, test_b, test_c, test_d;
wire test_out;

//instancia del modulo a testear, con notaci�n de posiciones de argumentos y con notaci�n de nombres
cl celda_logica( test_out, test_a, test_b, test_s);

initial
begin
  $monitor("tiempo=%0d s=%b a=%b b=%b out=%b", $time, test_s, test_a, test_b, test_out);
  $dumpfile("cl.vcd");
  $dumpvars;
  //vector de test 0
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b0;
  # 20;
  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b1;
  # 20;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b1;
  # 20;

  test_s = 2'b01;
  test_a = 1'b0;
  test_b = 1'b0;
  # 20;
  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b0;
  # 20;
  test_s = 2'b01;
  test_a = 1'b0;
  test_b = 1'b1;
  # 20;
  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b1;
  # 20;

  test_s = 2'b10;
  test_a = 1'b0;
  test_b = 1'b0;
  # 20;
  test_s = 2'b10;
  test_a = 1'b1;
  test_b = 1'b0;
  # 20;
  test_s = 2'b10;
  test_a = 1'b0;
  test_b = 1'b1;
  # 20;
  test_s = 2'b10;
  test_a = 1'b1;
  test_b = 1'b1;
  # 20;

  test_s = 2'b11;
  test_a = 1'b0;
  test_b = 1'b0;
  # 20;
  test_s = 2'b11;
  test_a = 1'b1;
  test_b = 1'b0;
  # 20;
  test_s = 2'b11;
  test_a = 1'b0;
  test_b = 1'b1;
  # 20;
  test_s = 2'b11;
  test_a = 1'b1;
  test_b = 1'b1;
  # 20;


  //fin simulacion
  $finish;
end

endmodule
