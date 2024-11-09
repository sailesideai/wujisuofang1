
module tdp_test_pattern #(
    parameter SEED_INIT = 999,
    parameter ADDR_WIDTH = 10,
    parameter DATA_WIDTH = 16,
    parameter BYTEEN_WIDTH = 8,

    parameter SCAN_MODE = 0 //1 == incr, 0 == decr
) (
    /**
     * @brieft assume high/posedge is active for all signals except rstn 
     */
    input                         clk,
    input                         rstn,
    output reg                    sim_end = 0,

    output reg [ADDR_WIDTH-1:0 ]  addr = {ADDR_WIDTH{1'b0}},
    output reg [DATA_WIDTH-1:0 ]  wdata = {DATA_WIDTH{1'b0}},
    output reg                    clke = 0,
    output reg                    we = 0,
    output reg [BYTEEN_WIDTH-1:0] byteen = {BYTEEN_WIDTH{1'b0}},
    output reg                    addren = 0,
    output reg                    bram_rst = 0,
    output integer                state_out

);

localparam TEST_INIT = 0;
localparam TEST_INIT_VAL = 1;
localparam TEST_NORMAL_SCAN = 2;
localparam TEST_DIFF_VALUE_ADDR = 3;
localparam TEST_CLKEN_DISABLE = 4;
localparam TEST_CLKEN_DISABLE_RAND = 5;
localparam TEST_WEN_DISABLE = 6;
localparam TEST_WEN_DISABLE_RAND = 7;
localparam TEST_ADDREN_DISABLE = 8;
localparam TEST_ADDREN_DISABLE_RAND = 9;
localparam TEST_BYTEEN_DISABLE = 10;
localparam TEST_BYTEEN_DISABLE_RAND = 11;
localparam TEST_SAME_VALUE_ADDR = 12;
localparam TEST_REN_DISABLE = 13;
localparam TEST_REN_DISABLE_RAND = 14;
localparam TEST_RST = 15;
localparam TEST_SAMEADDR_RANDOM = 16;
localparam TEST_RANDOM1 = 17;
localparam TEST_RANDOM2 = 18;
localparam TEST_RANDOM3 = 19;
localparam TEST_END = 20;
localparam TEST_READOUT = 999;

integer state = TEST_INIT;
integer next_state = TEST_INIT;
integer dummy = 0;
integer read_cnt = 0;
integer write_cnt = 0;

always @(*) begin
	assign state_out = state;
end

function [DATA_WIDTH-1:0] get_rand_wr_data(input integer dummy);
    reg [DATA_WIDTH-1:0] temp;
    integer i;
    begin
        temp = {DATA_WIDTH{1'b0}};
        for(i=0 ; i<$rtoi($ceil(DATA_WIDTH/32.0)) ; i=i+1) begin
            temp = temp << 32 | $random();
        end

        get_rand_wr_data = temp;
    end
endfunction

function [ADDR_WIDTH-1:0] get_rand_addr(input integer dummy);
    reg [ADDR_WIDTH-1:0] temp;
    integer i;
    begin
        temp = {ADDR_WIDTH{1'b0}};
        for(i=0 ; i<$rtoi($ceil(ADDR_WIDTH/32.0)) ; i=i+1) begin
            temp = temp << 32 | $random();
        end

        get_rand_addr = temp;
    end
endfunction

function get_rand_en(input integer dummy);
    integer random;
    integer temp;
    integer i;
    begin
        temp = 0;
        random = $random();
        for(i=0 ; i<32 ; i=i+1) begin
            temp = temp + random[0];
            random = random >> 1;
        end
        get_rand_en = temp[0];
    end
endfunction

function [BYTEEN_WIDTH-1:0] get_rand_byteen(input integer dummy);
    reg [BYTEEN_WIDTH-1:0] temp;
    integer i;
    begin
        temp = {BYTEEN_WIDTH{1'b0}};
        for(i=0 ; i<BYTEEN_WIDTH ; i=i+1) begin
            temp = temp << 1;
            temp[0] = get_rand_en(dummy);
        end

        get_rand_byteen = temp;
    end
endfunction
always @(posedge clk) begin
    if (~rstn) begin
        state <= TEST_INIT;
        next_state <= TEST_INIT;
        dummy <= 0;
        read_cnt <= 0;
        write_cnt <= 0;
        clke <= 1;
        we <= 0;
        addr <= {ADDR_WIDTH{1'b0}};
        byteen <= ~{BYTEEN_WIDTH{1'b1}};
        wdata <= {DATA_WIDTH{1'b0}};
        addren <= 1;
        bram_rst <= 1;
        sim_end <= 0;
    end else begin
        case (state)
        TEST_INIT: begin
            clke        <= 0;
            we          <= 0;
            byteen      <= ~{BYTEEN_WIDTH{1'b1}};
            addren      <= 0;
            bram_rst   <= 0;
            addr          <= {ADDR_WIDTH{1'b0}};
            wdata         <= 0;
            state       <= state + 1;
            read_cnt    <= 0;
            write_cnt   <= 0;
        end

        TEST_INIT_VAL: begin
            state      <= TEST_READOUT;
            next_state <= state + 1;
        end

        TEST_NORMAL_SCAN,
        TEST_CLKEN_DISABLE,
        TEST_CLKEN_DISABLE_RAND,
        TEST_WEN_DISABLE,
        TEST_WEN_DISABLE_RAND,
        TEST_ADDREN_DISABLE,
        TEST_ADDREN_DISABLE_RAND,
        TEST_BYTEEN_DISABLE,
        TEST_BYTEEN_DISABLE_RAND,
        TEST_SAME_VALUE_ADDR,
        TEST_DIFF_VALUE_ADDR: begin
            if (write_cnt == (1<<ADDR_WIDTH)) begin
                state       <= TEST_READOUT;
                next_state  <= state + 1;
                write_cnt   <= 0;

                addr        <= 0;
                wdata       <= {DATA_WIDTH{1'b0}};
                clke        <= 0;
                we          <= 0;
                addren      <= 0;
                byteen      <= ~{BYTEEN_WIDTH{1'b1}};
            end else begin
                write_cnt   <= write_cnt + 1;

                wdata       <= state == TEST_SAME_VALUE_ADDR ? write_cnt[DATA_WIDTH-1:0] : get_rand_wr_data(dummy);
                addr        <= SCAN_MODE ? 
                                !(state == TEST_SAME_VALUE_ADDR || state == TEST_DIFF_VALUE_ADDR) ? 
                                ~write_cnt[0 +: ADDR_WIDTH] : 
                                write_cnt[0 +: ADDR_WIDTH] : 
                                write_cnt[0 +: ADDR_WIDTH];
                clke       <= state == TEST_CLKEN_DISABLE ? 0 : 
                            state == TEST_CLKEN_DISABLE_RAND ? get_rand_en(dummy) : 
                            1;    
                we          <= state == TEST_WEN_DISABLE ? 0 :
                            state == TEST_WEN_DISABLE_RAND ? get_rand_en(dummy) : 
                            1;
                addren      <= state == TEST_ADDREN_DISABLE ? 0 : 
                            state == TEST_ADDREN_DISABLE_RAND ? get_rand_en(dummy) : 
                            1;
                byteen      <= state == TEST_BYTEEN_DISABLE ? ~{BYTEEN_WIDTH{1'b1}} : 
                            state == TEST_BYTEEN_DISABLE_RAND ? get_rand_byteen(dummy) : 
                            {BYTEEN_WIDTH{1'b1}};
                $display("%t ps - write data %h to address: %d ", $time(), wdata, addr);
            end
        end

        TEST_REN_DISABLE, 
        TEST_REN_DISABLE_RAND: begin
            clke    <= state == TEST_REN_DISABLE ? 0 : 
                            get_rand_en(dummy);
            we      <= 0;
            byteen  <= ~{BYTEEN_WIDTH{1'b1}};
            wdata     <= 0;

            if (read_cnt == (1<<ADDR_WIDTH)) begin
                state       <= state + 1;
                read_cnt    <= 0;
                write_cnt   <= 0;

                addr        <= 0;
                wdata       <= {DATA_WIDTH{1'b0}};
                clke        <= 0;
                we          <= 0;
                addren      <= 0;
                byteen      <= ~{BYTEEN_WIDTH{1'b1}};
            end else begin
                addren      <= 1;
                addr        <= read_cnt[0 +: ADDR_WIDTH];
                read_cnt    <= read_cnt + 1;
            end
        end

        TEST_RST: begin
            if (write_cnt < 10) begin
                bram_rst    <= 1;
                clke        <= 1;
                write_cnt   <= write_cnt + 1;
            end else begin   
                state       <= state + 1;
                bram_rst    <= 0;
                clke        <= 0;
                write_cnt   <= 0;
            end
        end

        TEST_SAMEADDR_RANDOM,
        TEST_RANDOM1, TEST_RANDOM2, TEST_RANDOM3: begin
            if (write_cnt == (1 << ADDR_WIDTH)) begin
                state       <= TEST_READOUT;
                next_state  <= state + 1;
                write_cnt   <= 0;

                addr        <= 0;
                wdata       <= {DATA_WIDTH{1'b0}};
                clke        <= 0;
                we          <= 0;
                addren      <= 0;
                byteen      <= ~{BYTEEN_WIDTH{1'b1}};
            end else begin
                write_cnt   <= write_cnt + 1;

                addr        <= state == TEST_SAMEADDR_RANDOM ? write_cnt[0 +: ADDR_WIDTH] : get_rand_addr(dummy);
                wdata       <= get_rand_wr_data(dummy);
                clke        <= get_rand_en(dummy);
                we          <= get_rand_en(dummy);
                addren      <= get_rand_en(dummy);
                byteen      <= get_rand_byteen(dummy);
                bram_rst    <= get_rand_en(dummy);
                $display("%t ps - write data %h to address: %d ", $time(), wdata, addr);
            end
        end

        TEST_END: begin
            clke            <= 0;
            we            <= 0;
            byteen          <= ~{BYTEEN_WIDTH{1'b1}};
            addren          <= 0;
            addr            <= {ADDR_WIDTH{1'b1}};
            wdata           <= 0;
            state           <= state;

            if (write_cnt > 5) begin
                sim_end <= 1;
            end else begin
                write_cnt    <= write_cnt + 1;
            end
        end

        TEST_READOUT: begin
            clke    <= 1;
            we    <= 0;
            byteen  <= ~{BYTEEN_WIDTH{1'b1}};
            wdata   <= 0;

            if (read_cnt == (1<<ADDR_WIDTH)) begin
                state       <= next_state;
                addren      <= 0;
                addr        <= 0;
                read_cnt    <= 0;
            end else begin
                addren      <= 1;
                addr        <= read_cnt[0 +: ADDR_WIDTH];
                read_cnt    <= read_cnt + 1;
            end
        end

        endcase
    end
    
    
end

initial begin
	$display("==============");
    $display("Testbench begin!");
    $display("==============");
end

always @(state) begin
	$display("\nSTATE : %d \n", state);
end

endmodule
