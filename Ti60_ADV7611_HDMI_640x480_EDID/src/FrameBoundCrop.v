`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    00:06:18 06/23/2023 
// Module Name:    FrameBoundCrop 
//////////////////////////////////////////////////////////////////////////////////
module FrameBoundCrop #(
	parameter 	DATA_WIDTH 	= 24,
			CNT_BITS 	= 12, 
			
//			SKIP_ROWS 	= 10, 
//			SKIP_COLS 	= 10,
			TOTAL_ROWS 	= 1080, 
			TOTAL_COLS 	= 1920
)(
	input 				clk_i,
	input 				rst_i,
	
	input [10:0]        C_DST_IMG_WIDTH,
    input [10:0]        C_DST_IMG_HEIGHT,
	//	Data Input
	input 				vs_i,
	input 				hs_i,
	input 				de_i,
	input 	[DATA_WIDTH-1:0] 	data_i,
	
	//	Data Output
	output reg				vs_o,
	output reg				hs_o,
	output reg				de_o,
	output reg	[DATA_WIDTH-1:0] 	data_o
);
	wire	[10:0] SKIP_ROWS; 
    wire    [10:0] SKIP_COLS; 
	assign SKIP_ROWS = (C_DST_IMG_WIDTH -640)/2;
    assign SKIP_COLS = (C_DST_IMG_HEIGHT - 480)/2;
	
	initial begin
		vs_o <= 0; 
		hs_o <= 0; 
		de_o <= 0; 
		data_o <= 0; 
	end
	
	reg 	[CNT_BITS-1:0] 	rc_w = 0, rc_h = 0; 
	reg 	[1:0] 		r_vs_i = 0, r_hs_i = 0, r_de_i = 0; 
	
	wire 			w_skip = (rc_w < SKIP_COLS) || (rc_w >= TOTAL_COLS - SKIP_COLS) || (rc_h < SKIP_ROWS) || (rc_h >= TOTAL_ROWS - SKIP_ROWS); 
	
	always @(posedge clk_i) begin
		r_vs_i <= {r_vs_i, vs_i}; 
		r_hs_i <= {r_hs_i, hs_i}; 
		r_de_i <= {r_de_i, de_i}; 
		
		//	On HS_R clear all counters. On DE_F increment h counter. On DE increment w counter. 
		//	It's required that DE be stable throughout a line. 
		if(r_vs_i == 2'b01) begin
			rc_h <= 0; 
		end else if(r_de_i == 2'b10) begin
			rc_h <= rc_h + 1; 
		end else begin
		end
		
		//	Count on DE. 
		if(~de_i)
			rc_w <= 0; 
		else
			rc_w <= rc_w + 1; 

		vs_o <= vs_i; 
		hs_o <= hs_i; 
		de_o <= de_i; 
		//	Set boundary to 0. 
		data_o <= w_skip ? {DATA_WIDTH{1'b0}} : data_i; 
	end
	
	
endmodule
