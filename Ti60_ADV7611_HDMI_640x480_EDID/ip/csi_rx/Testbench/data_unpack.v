module data_unpack
#(
	parameter PIXEL_BIT		= 15,
	parameter PACK_BIT		= 64,
	parameter FIFO_WIDTH	= 11
)
(
	input	in_pclk,
	input	in_rstn,
	
	input 	[FIFO_WIDTH-1:0]	in_x,
	input 	[FIFO_WIDTH-1:0]	in_y,
	input 						in_valid,
	input 						in_de,
	input 						in_hs,
	input 						in_vs,
	input	[PACK_BIT-1:0]		in_data,
	
	output 	[FIFO_WIDTH-1:0]	out_x,
	output 	[FIFO_WIDTH-1:0]	out_y,
	output 						out_valid,
	output 						out_de,
	output 						out_hs,
	output 						out_vs,
	output	[PIXEL_BIT-1:0]		out_data
);

parameter	PACK_DIV	= PACK_BIT / PIXEL_BIT;

/* VGA counter for the output display sync signals generator */
reg [FIFO_WIDTH-2:0]	r_x_total;
reg [FIFO_WIDTH-1:0]	r_out_x;
reg [FIFO_WIDTH-1:0]	r_in_x_1P;
reg [3:0] 				r_pcnt;
reg [3:0] 				r_pcnt_1P;
reg [3:0] 				r_pcnt_2P;
reg [3:0] 				r_pcnt_3P;
reg [3:0] 				r_pcnt_4P;
reg [3:0] 				r_pcnt_5P;
reg						r_line_start;
reg						r_line_end;
reg						r_out_vs_1P;
reg						r_out_vs_2P;
reg						r_out_vs_3P;
reg						r_out_vs_4P;
reg						r_out_vs_5P;
reg						r_out_vs_6P;
reg						r_out_hs_1P;
reg						r_out_hs_2P;
reg						r_out_hs_3P;
reg						r_out_hs_4P;
reg						r_out_hs_5P;
reg						r_out_hs_6P;
reg						r_out_de;
reg						r_out_de_1P;
reg						r_out_de_2P;
reg						r_out_de_3P;
reg						r_out_de_4P;
reg						r_out_de_5P;
reg						r_out_valid;
reg						r_out_valid_1P;
reg						r_out_valid_2P;
reg						r_out_valid_3P;
reg						r_out_valid_4P;
reg	[FIFO_WIDTH-1:0]	r_in_y_4P;
reg	[FIFO_WIDTH-1:0]	r_out_x_1P;
reg	[FIFO_WIDTH-1:0]	r_out_x_2P;
reg	[FIFO_WIDTH-1:0]	r_out_x_3P;
reg	[FIFO_WIDTH-1:0]	r_out_y_4P;
reg	[PACK_BIT-1:0]		r_out_data_3P;
reg	[PACK_BIT-1:0]		r_out_data_4P;
reg						r_de_1P;
reg 					r_in_vs;
reg 					r_in_hs;
reg 					r_in_de;
reg 					r_in_vs_1P;
reg 					r_in_hs_1P;
reg 					r_in_de_1P;
reg 					r_in_vs_2P;
reg 					r_in_hs_2P;
reg 					r_in_de_2P;
reg 					r_in_vs_3P;
reg 					r_in_hs_3P;
reg 					r_in_de_3P;

wire					w_vs;
wire					w_hs;
wire					w_de;
wire[PACK_BIT-1:0]		w_out_data;
wire[FIFO_WIDTH-1:0]	w_out_x;

/* VGA counter for the output display sync signals generator */
/* r_x_cnt for HSYNC and DEN */  
always @ (posedge in_pclk)
begin
	if(~in_rstn)
	begin    
		r_x_total		<= {(FIFO_WIDTH-1){1'b0}};
		r_out_x			<= {FIFO_WIDTH{1'b0}};
		r_in_x_1P		<= {FIFO_WIDTH{1'b0}};
		r_in_y_4P		<= {FIFO_WIDTH{1'b0}};
		r_out_x_1P		<= {FIFO_WIDTH{1'b0}};
		r_out_x_2P		<= {FIFO_WIDTH{1'b0}};
		r_out_x_3P		<= {FIFO_WIDTH{1'b0}};
		r_out_y_4P		<= {FIFO_WIDTH{1'b0}};
		r_out_data_3P	<= {PACK_BIT{1'b0}};
		r_out_data_4P	<= {PACK_BIT{1'b0}};
		r_pcnt			<= 4'b0;
		r_line_start	<= 1'b0;
		r_line_end		<= 1'b0;
		r_out_vs_1P		<= 1'b0;
		r_out_vs_2P		<= 1'b0;
		r_out_vs_3P		<= 1'b0;
		r_out_vs_4P		<= 1'b0;
		r_out_vs_5P		<= 1'b0;
		r_out_vs_6P		<= 1'b0;
	    r_out_hs_1P		<= 1'b0;
	    r_out_hs_2P		<= 1'b0;
	    r_out_hs_3P		<= 1'b0;
	    r_out_hs_4P		<= 1'b0;
	    r_out_hs_5P		<= 1'b0;
	    r_out_hs_6P		<= 1'b0;
	    r_out_de		<= 1'b0;
	    r_out_de_1P		<= 1'b0;
		r_out_de_2P		<= 1'b0;
		r_out_de_3P		<= 1'b0;
		r_out_de_4P		<= 1'b0;
		r_out_de_5P		<= 1'b0;
		r_out_valid		<= 1'b0;
		r_out_valid_1P	<= 1'b0;
		r_out_valid_2P	<= 1'b0;
		r_out_valid_3P	<= 1'b0;
		r_out_valid_4P	<= 1'b0;
		r_pcnt_1P		<= 4'b0;
		r_pcnt_2P		<= 4'b0;
		r_pcnt_3P		<= 4'b0;
		r_pcnt_4P		<= 4'b0;
		r_pcnt_5P		<= 4'b0;
		r_de_1P			<= 1'b0;
		r_in_vs_1P      <= 1'b0;
		r_in_hs_1P      <= 1'b0;
		r_in_de_1P      <= 1'b0;
		r_in_vs_2P      <= 1'b0;
		r_in_hs_2P      <= 1'b0;
		r_in_de_2P      <= 1'b0;
		r_in_vs_3P      <= 1'b0;
		r_in_hs_3P      <= 1'b0;
		r_in_de_3P      <= 1'b0;
	end	
	else
	begin
		if (in_valid)
			r_in_x_1P	<= in_x;
		r_de_1P		<= w_de;
		
		r_out_vs_1P		<= w_vs;
		r_out_vs_2P		<= r_out_vs_1P;
		r_out_vs_3P		<= r_out_vs_2P;
		r_out_vs_4P		<= r_out_vs_3P;
		r_out_vs_5P		<= r_out_vs_4P;
		r_out_vs_6P		<= r_out_vs_5P;
	    r_out_hs_1P		<= w_hs;
	    r_out_hs_2P		<= r_out_hs_1P;
	    r_out_hs_3P		<= r_out_hs_2P;
	    r_out_hs_4P		<= r_out_hs_3P;
	    r_out_hs_5P		<= r_out_hs_4P;
	    r_out_hs_6P		<= r_out_hs_5P;
	    r_out_de_1P		<= r_out_de;
		r_out_de_2P		<= r_out_de_1P;
		r_out_de_3P		<= r_out_de_2P;
		r_out_de_4P		<= r_out_de_3P;
		r_out_de_5P		<= r_out_de_4P;
		r_out_valid_1P	<= r_out_valid;
		r_out_valid_2P	<= r_out_valid_1P;
		r_out_valid_3P	<= r_out_valid_2P;
		r_out_valid_4P	<= r_out_valid_3P;
		r_pcnt_1P		<= r_pcnt;
		r_pcnt_2P		<= r_pcnt_1P;
		r_pcnt_3P		<= r_pcnt_2P;
		r_pcnt_4P		<= r_pcnt_3P;
		r_pcnt_5P		<= r_pcnt_4P;
		r_out_x_1P		<= r_out_x;// * PACK_DIV + r_pcnt;		
		r_out_x_2P		<= r_out_x_1P;
		r_out_x_3P		<= r_out_x_2P;
		
		r_in_vs_1P	<= in_vs;
		r_in_hs_1P	<= in_hs;
		r_in_de_1P	<= in_de;
		r_in_vs_2P	<= r_in_vs_1P;
		r_in_hs_2P	<= r_in_hs_1P;
		r_in_de_2P	<= r_in_de_1P;
		r_in_vs_3P	<= r_in_vs_2P;
		r_in_hs_3P	<= r_in_hs_2P;
		r_in_de_3P	<= r_in_de_2P;
		
		if (in_de && ~r_in_de_1P)
			r_line_start	<= 1'b1;
			
		if (~in_de && r_in_de_1P)
		begin
			r_line_end	<= 1'b1;
			r_x_total	<= r_in_x_1P;
		end
		
		if (w_de && ~r_de_1P)
			r_out_de	<= 1'b1;
			
		if (r_out_de)
		begin
			if (r_pcnt == (PACK_DIV - 1'b1))
				r_pcnt 		<= 2'b0;
			else
				r_pcnt 		<= r_pcnt + 1'b1;
			
			if (r_pcnt == 2'b0)				
				r_out_valid	<= 1'b1;
			else
				r_out_valid	<= 1'b0;
			
			if (r_out_valid)
				r_out_x		<= r_out_x + 1'b1;
			
			if (r_out_x > r_x_total+1)
			begin
				r_out_de	<= 1'b0;
				r_out_x		<= {FIFO_WIDTH{1'b0}};
			end
		end
		else
		begin
			r_pcnt 		<= 2'b0;
			r_out_valid	<= 1'b0;
		end
		
		if (r_out_valid_2P)
			r_out_data_3P	<= w_out_data;
		else			
			r_out_data_3P[PIXEL_BIT*(PACK_DIV-1)-1:0]	<= r_out_data_3P[PIXEL_BIT*(PACK_DIV)-1:PIXEL_BIT];
		
		r_out_data_4P[PIXEL_BIT-1:0]	<= r_out_data_3P[PIXEL_BIT-1:0];
		
		if (~r_out_de_3P && r_out_de_4P)
			r_out_y_4P	<= r_out_y_4P + 1'b1;
		
		if (~r_out_vs_3P)
			r_out_y_4P	<= {FIFO_WIDTH{1'b0}};
	end
end

//----- add on -----
wire w_vs_int, w_hs_int, w_de_int;
reg r_line_end_1P, r_final_end_1P;

assign w_vs = r_line_end_1P ? w_vs_int : 1'b0;
assign w_hs = r_line_end_1P ? w_hs_int : 1'b0;
assign w_de = r_line_end_1P ? w_de_int : 1'b0;

always @ (posedge in_pclk)
begin
	if(~in_rstn) begin
        r_line_end_1P    <= 1'b0;
    end
    else begin
        r_line_end_1P    <= r_line_end;
    end
end
//------------------

/* 1 line delay */
dual_clock_fifo
#(	
	.DATA_WIDTH(3),
    .ADDR_WIDTH(FIFO_WIDTH)
) 
dual_clock_fifo_in0 
(
	.i_arst 	(~in_rstn),
	.i_wclk 	(in_pclk),
	.i_we 		(r_line_start),
	.i_wdata 	({r_in_vs_3P, r_in_hs_3P, r_in_de_3P}),  
	.i_rclk 	(in_pclk),  
	.i_re 		(r_line_end),  
	.o_rdata 	({w_vs_int, w_hs_int, w_de_int})
);

//shift_reg
//#(
//	.D_WIDTH(1),
//	.TAPE(6)
//)
//inst_shift_reg_00
//(                                                                    
//	.i_arst	(~in_rstn),                                               
//	.i_clk	(in_pclk),
//	.i_en	(1'b1),
//
//	.i_d({w_vs, w_hs}),
//	.o_q({out_vs, out_hs})                  	
//);

shift_reg
#(
	.D_WIDTH(FIFO_WIDTH),
	.TAPE(PACK_DIV)
)
inst_shift_reg_01
(                                                                    
	.i_arst	(~in_rstn),                                               
	.i_clk	(in_pclk),
	.i_en	(1'b1),

	.i_d(r_out_x_3P),
	.o_q(w_out_x)                  	
);

/* 1 line buffer */
simple_dual_port_ram
#(
	. DATA_WIDTH   	(PACK_BIT),
	. ADDR_WIDTH	(FIFO_WIDTH)
)
inst_line_buffer_00
(
	.wclk	(in_pclk	),
	.we		(in_valid	),
	.waddr	(in_x		),
	.wdata	(in_data	),
		
	.rclk	(in_pclk	),
	.re		(r_out_de	),
	.raddr	(r_out_x),
	.rdata	(w_out_data	)
);

assign	out_x		= w_out_x*PACK_DIV + r_pcnt_5P;
assign	out_y		= r_out_y_4P;
assign	out_vs		= w_vs;
assign	out_hs		= w_hs;
assign	out_valid	= r_out_de_5P && (w_out_x*PACK_DIV + r_pcnt_5P < (r_x_total+1)*PACK_DIV);
assign	out_de		= r_out_de_5P && (w_out_x*PACK_DIV + r_pcnt_5P < (r_x_total+1)*PACK_DIV);
assign	out_data	= r_out_data_4P;
endmodule
