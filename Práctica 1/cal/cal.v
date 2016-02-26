//Celda aritmético-lógica
module cal(output wire out, c_out, input wire a, b, l, c_in, input wire [1:0] s);

//Declaraci�n de conexiones internas
wire  cl_output, fa_output;

cl cl0 (cl_output, a, b, s);
fa fa0 (c_out, fa_output, a, b, c_in);

mux2_1 mux2_10 (out, fa_output, cl_output, l);

endmodule