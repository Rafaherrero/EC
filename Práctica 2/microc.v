// Samuel Ramos Barroso y Samuel Valcarcel Arce 


module microc(input wire clk, reset, s_inc, s_inm, we3, input wire [2:0] op, output wire z, output wire [5:0] opcode);
//Microcontrolador sin memoria de datos de un solo ciclo

//Instanciar e interconectar pc, memprog, regfile, alu, sum y mux's
 
wire [9:0] pc_1, sums_, pc_2;
wire [15:0] mi_;

wire [7:0] wd_3, rd_1, rd_2,s_alu;



sum sumador(10'b000000001, pc_2, sums_);

mux2 #(10) muxpc (mi_[15:6], sums_, s_inc, pc_1);
 
mux2 #(8) muxbanco (s_alu, mi_[11:4], s_inm, wd_3);

registro #(10) pc (clk, reset, pc_1, pc_2);

memprog meminst (clk, pc_2, mi_);

regfile banco (clk, we3, mi_[7:4], mi_[11:8] ,mi_[15:12], wd_3, rd_1, rd_2);

alu alu_ (rd_1, rd_2, op, s_alu, z);

endmodule
