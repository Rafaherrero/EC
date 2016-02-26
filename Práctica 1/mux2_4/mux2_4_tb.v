// Testbench para modulos mux2_1
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el del paso de simulacion
module mux2_4_tb;
//declaracion de se�ales
reg [3:0] test_a, test_b;
reg test_s;
wire [3:0] test_out;

//instancia del modulo a testear, con notaci�n de posiciones de argumentos y con notaci�n de nombres
mux2_4 multiplexor2_4( test_out, test_a, test_b, test_s);

initial
begin
  $monitor("tiempo=%0d s=%b a=%b b=%b out=%b", $time, test_s, test_a, test_b, test_out);
  $dumpfile("mux2_4.vcd");
  $dumpvars;
  //vector de test 0
  test_s = 4'b0;
  test_a = 4'b0000;
  test_b = 4'b0000;
  # 20;
  test_s = 4'b0;
  test_a = 4'b1100;
  test_b = 4'b0000;
  # 20;
  test_s = 4'b0;
  test_a = 4'b0000;
  test_b = 4'b0110;
  # 20;
  test_s = 4'b1;
  test_a = 4'b0000;
  test_b = 4'b0101;
  # 20;
  //fin simulacion
  $finish;
end

endmodule
