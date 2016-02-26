//Complementador a 1 de 4 bits
module compl1(output wire [3:0] Sal, input wire [3:0] Ent, input wire cpl);

assign Sal = ( cpl == 0 )? Ent: ~Ent;

endmodule
