//Mux de cuatro entradas con 2 bits de selección
module mux4_1(output wire out, input wire a, b, c, d, input wire [1:0]s);

//Declaración de conexiones internas
wire  n0o, n1o, a0o, a1o, a2o, a3o;

//Instancias de puertas y sus conexiones
not not0 (n0o, s[0]);
not not1 (n1o, s[1]);
and and0 (a0o, a, n1o,  n0o);
and and1 (a1o, b, n1o,  s[0]);
and and2 (a2o, c, s[1], n0o);
and and3 (a3o, d, s[1], s[0]);
or or0 (out, a0o, a1o, a2o, a3o);

endmodule
