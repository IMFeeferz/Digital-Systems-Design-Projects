module Project1_TB();

reg [7:0] op_a_sig;
reg [7:0] op_b_sig;
reg [1:0] op_code_sig;
wire [7:0] out_sig;
wire carry_out_sig;

initial
begin
	op_a_sig = 7'b0;
	op_b_sig = 7'b0;
	op_code_sig = 1'b0;
//wire [7:0] out,
//wire carry_out
@posedge(op_a_sig || op_b_sig)
	op_code_sig = a'b1;

end

Project1 Project1_inst
(
	.op_a(op_a_sig) ,	// input [7:0] op_a_sig
	.op_b(op_b_sig) ,	// input [7:0] op_b_sig
	.op_code(op_code_sig) ,	// input [1:0] op_code_sig
	.out(out_sig) ,	// output [7:0] out_sig
	.carry_out(carry_out_sig) 	// output  carry_out_sig
);

defparam Project1_inst.ADD = 'b00;
defparam Project1_inst.SUB = 'b01;
defparam Project1_inst.TWO = 'b10;
defparam Project1_inst.XOR = 'b11;