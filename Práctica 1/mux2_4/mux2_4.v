//Mux de dos entradas de 4 bits
module mux2_4(output wire [3:0] out, input wire [3:0] a, b, input wire s);

assign out = ( s == 0 )? a: b;

endmodule
