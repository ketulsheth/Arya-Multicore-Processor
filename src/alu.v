`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:20 03/03/2014 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu # (
		parameter	DATAPATH_WIDTH = 64
		) (
    input [DATAPATH_WIDTH-1:0] a_in,
    input [DATAPATH_WIDTH-1:0] b_in,
    input [3:0] alu_ctrl_in,
    output reg [DATAPATH_WIDTH-1:0] accum_out
    );


wire shift_value = b_in[5:0];

always @(*) begin
	case (alu_ctrl_in)
	'd0:accum_out 		= a_in + b_in; // ADD
	'd1:accum_out 		= a_in - b_in; // SUB
	'd2:accum_out		= a_in & b_in; // AND
	'd3:accum_out		= a_in | b_in; // OR
	'd4:accum_out		= ~a_in;			// NOT
	'd5:accum_out		= a_in ^ b_in;	// EXOR
	'd6:accum_out		= a_in << shift_value;	// SLL
	'd7:accum_out		= a_in >> shift_value;	// SLL
	default:accum_out = 'd0;
	endcase
end
endmodule
