//Celda logica que pone una función logica (and, or, xor o not) en la salida
//según la entrada de selección

module cl(output wire out, input wire a, b, input wire [1:0] s);

//Declaraci�n de conexiones internas
wire a0o, o0o, x0o, n0o;

//Instancias de puertas y sus conexiones
and and0 (a0o, a, b);
or  or0  (o0o, a, b);
xor xor2 (x0o, a, b);
not not0 (n0o, a);

mux4_1 multiplexor4_1(out, a0o, o0o, x0o, n0o, s);

endmodule
