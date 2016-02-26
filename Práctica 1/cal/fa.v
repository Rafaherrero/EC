//Mux de dos entradas de 1 bit realizado a partir de puertas
module fa(output wire cout, sum, input wire a, b, cin);

//Declaraci�n de conexiones internas
wire  a_xor_b, z_and_c, a_and_b;

//Cálculo de la salida
xor xor0 (a_xor_b, a, b);
xor xor1 (sum, a_xor_b, cin);

//Cálculo del carry
and and0 (z_and_c, a_xor_b, cin);
and and1 (a_and_b, a, b);
or  or0  (cout, z_and_c, a_and_b);


endmodule
