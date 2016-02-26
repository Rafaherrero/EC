// Testbench para modulos mux2_1
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el del paso de simulacion
module compl1_tb;
//declaracion de se�ales
reg [3:0] test_a;
reg test_s;
wire [3:0] test_out;

//instancia del modulo a testear, con notaci�n de posiciones de argumentos y con notaci�n de nombres
compl1 complementador_1( test_out, test_a, test_s );

initial
begin
  $monitor("tiempo=%0d s=%b a=%b out=%b", $time, test_s, test_a, test_out);
  $dumpfile("compl1.vcd");
  $dumpvars;
  //vector de test 0
  test_s = 1'b0;
  test_a = 4'b0001;
  # 20;
  test_s = 1'b0;
  test_a = 4'b0100;
  # 20;
  test_s = 1'b1;
  test_a = 4'b0001;
  # 20;
  test_s = 1'b1;
  test_a = 4'b0100;
  # 20;
  //fin simulacion
  $finish;
end

endmodule