`timescale 1 ns/10 ps
// Samuel Ramos Barroso y Samuel Valcarcel Arce 
module microc_tb;

reg test_clk, test_reset, test_s_inc, test_s_inm, test_we3;
wire test_z;
reg [2:0] test_op;
wire [5:0] test_opcode;
microc mc(test_clk, test_reset, test_s_inc, test_s_inm, test_we3, test_op, test_z, test_opcode);

always 
begin

	test_clk=1;
	#10;
	test_clk=0;
	#10;
end

initial
begin

	test_reset=1;
	#5;
	test_reset=0;
end

initial 
begin

	#10;
	test_s_inc=0 ;
	test_s_inm=0 ;
	test_op=3'b000 ;
	test_we3=0 ;
	#20;
	test_s_inc=1 ;
	test_s_inm=1 ;
	test_op=3'b000 ;
	test_we3=1 ;
	#20;
	test_s_inc=1 ;
	test_s_inm=0 ;
	test_op=3'b101 ;
	test_we3=1 ;
	#20;
end

initial 
begin

	$monitor(test_clk, test_reset, test_s_inc, test_s_inm, test_we3, test_z, test_op, test_opcode);
	$dumpfile("micro_tb.vcd");
	$dumpvars;
	#100;
	$finish;
end
endmodule
