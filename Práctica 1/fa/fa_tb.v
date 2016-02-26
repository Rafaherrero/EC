// Testbench para modulos fa
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el del paso de simulacion
module fa_tb;
//declaracion de se�ales
reg test_cin, test_a, test_b;
wire test_cout, test_sum;

//instancia del modulo a testear, con notaci�n de posiciones de argumentos y con notaci�n de nombres
fa full_adder( test_cout, test_sum, test_a, test_b, test_cin);


initial
begin
  $monitor("tiempo=%0d cin=%b a=%b b=%b cout=%b sum=%b", $time, test_cin, test_a, test_b, test_cout, test_sum);
  $dumpfile("fa.vcd");
  $dumpvars;
  //vector de test 0
  test_cin = 1'b0;
  test_a = 1'b0;
  test_b = 1'b0;
  # 20;
  //vector de test 1
  test_cin = 1'b0;
  test_a = 1'b0;
  test_b = 1'b1;
  # 20;
  //vector de test 2
  test_cin = 1'b0;
  test_a = 1'b1;
  test_b = 1'b0;
  # 20;
  //vector de test 3
  test_cin = 1'b0;
  test_a = 1'b1;
  test_b = 1'b1;
  # 20;
  //vector de test 4
  test_cin = 1'b1;
  test_a = 1'b0;
  test_b = 1'b0;
  # 20;
  //vector de test 5
  test_cin = 1'b1;
  test_a = 1'b0;
  test_b = 1'b1;
  # 20;
  //vector de test 6
  test_cin = 1'b1;
  test_a = 1'b1;
  test_b = 1'b0;
  # 20;
  //vector de test 7
  test_cin = 1'b1;
  test_a = 1'b1;
  test_b = 1'b1;

  //fin simulacion
  $finish;
end

endmodule
