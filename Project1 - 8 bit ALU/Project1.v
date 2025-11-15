module Project1(
	//input and output variables for the schematic
	input [7:0] op_a,
	input [7:0] op_b,
	input [1:0] op_code,
	output reg [7:0] out,
	output reg carry_out
);

	//Assigning commands to 2 bit inputs
	
	parameter  [1:0] 
						ADD = 2'b00,
						SUB = 2'b01,
						TWO = 2'b10,
						XOR = 2'b11;      
	
	always @(op_code)
	begin
		//case statements for opcode's 2 bit input
		case(op_code)
		ADD: begin
			{carry_out,out} = op_a + op_b;
		end
		
		SUB: begin
			out = op_a - op_b;
		end
		
		TWO: begin
			{carry_out,out} = ~op_a + 1'b1;
		end
		
		XOR: begin
			out = op_a ^ op_b;
		end
		endcase
	end
endmodule