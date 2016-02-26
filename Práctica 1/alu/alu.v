//Módulo de la ALU
//según la entrada de selección

module alu(output wire [3:0] R, output wire zero, carry, sign, input wire [3:0] A, B, input wire [1:0] ALUOp, input wire L);

//Celda aritmetico logica de 1 bit:	cal(output wire out, c_out, input wire a, b, l, c_in, input wire [1:0] s);
//Mux 2 a 1 de 4 bits			mux2_4(output wire [3:0] out, input wire [3:0] a, b, input wire s);
//Complementador a 1			compl1(output wire [3:0] Sal, input wire [3:0] Ent, input wire cpl);
//

wire [3:0] OP1, OP2, cpl_in;
wire Cin1, Cin2, Cin3, cpl, op1_A, op1_B;

//CABLEADO DE LOS MULTIPLEXORES
assign op1_A = L | (~ALUOp[1]);
assign op1_B = L | (~ALUOp[1]) | ALUOp[0];
assign cpl = ( (~L) & ALUOp[1] ) | ( (~L) & ALUOp[0]);


//INSTANCIAS DE LOS MULTIPLEXORES Y EL COMPLEMENTADOR
mux2_4 mux0(OP1, 4'b0000, A, op1_A);
mux2_4 mux1(cpl_in, A, B, op1_B);

compl1 complementador(OP2, cpl_in, cpl);

//INSTACIAS DE LAS CELDAS ARITMÉTICO-LÓGICAS
cal cal0(R[0], Cin1, OP1[0], OP2[0], L, cpl, ALUOp);
cal cal1(R[1], Cin2, OP1[1], OP2[1], L, Cin1, ALUOp);
cal cal2(R[2], Cin3, OP1[2], OP2[2], L, Cin2, ALUOp);
cal cal3(R[3], carry, OP1[3], OP2[3], L, Cin3, ALUOp);

//ASIGNACIÓN DE LA SALIDA ZERO
assign zero = ( R == 4'b0000 )? 1'b1: 1'b0;

//ASIGNACIÓN DE LA SALIDA SIGN
assign sign = R[3];


endmodule
