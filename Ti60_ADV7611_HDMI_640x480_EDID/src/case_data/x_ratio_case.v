module x_ratio_case(raddr,data);

    input      [9:0]    raddr;
    output reg [15:0]   data;

    always@(*)
        case(raddr)
            10'd1   : data <= 16'hFF77;
            10'd2   : data <= 16'hFEF0;
            10'd3   : data <= 16'hFE68;
            10'd4   : data <= 16'hFDE2;
            10'd5   : data <= 16'hFD5C;
            10'd6   : data <= 16'hFCD6;
            10'd7   : data <= 16'hFC52;
            10'd8   : data <= 16'hFBCD;
            10'd9   : data <= 16'hFB49;
            10'd10  : data <= 16'hFAC6;

            10'd11  : data <= 16'hFA43; 
            10'd12  : data <= 16'hF9C1; 
            10'd13  : data <= 16'hF93F; 
            10'd14  : data <= 16'hF8BE; 
            10'd15  : data <= 16'hF83E; 
            10'd16  : data <= 16'hF7BD; 
            10'd17  : data <= 16'hF73E; 
            10'd18  : data <= 16'hF6BF; 
            10'd19  : data <= 16'hF640; 
            10'd20  : data <= 16'hF5C2;

            10'd21  : data <= 16'hF544; 
            10'd22  : data <= 16'hF4C7; 
            10'd23  : data <= 16'hF44B; 
            10'd24  : data <= 16'hF3CF; 
            10'd25  : data <= 16'hF353; 
            10'd26  : data <= 16'hF2D8; 
            10'd27  : data <= 16'hF25D; 
            10'd28  : data <= 16'hF1E3; 
            10'd29  : data <= 16'hF16A; 
            10'd30  : data <= 16'hF0F0;

            10'd31  : data <= 16'hF078;
            10'd32  : data <= 16'hF000;
            10'd33  : data <= 16'hEF88;
            10'd34  : data <= 16'hEF10;
            10'd35  : data <= 16'hEE9A;
            10'd36  : data <= 16'hEE23;    
            10'd37  : data <= 16'hEDAD;
            10'd38  : data <= 16'hED38;
            10'd39  : data <= 16'hECC3;
            10'd40  : data <= 16'hEC4E;

            10'd41   : data <= 16'hEBDA;
            10'd42   : data <= 16'hEB66;
            10'd43   : data <= 16'hEAF3;
            10'd44   : data <= 16'hEA80;
            10'd45   : data <= 16'hEA0E;
            10'd46   : data <= 16'hE99C;
            10'd47   : data <= 16'hE92B;
            10'd48   : data <= 16'hE8BA;
            10'd49   : data <= 16'hE849;
            10'd50   : data <= 16'hE7D9;

            10'd51   : data <= 16'hE769;
            10'd52   : data <= 16'hE6FA;
            10'd53   : data <= 16'hE68B;
            10'd54   : data <= 16'hE61C;
            10'd55   : data <= 16'hE5AE;
            10'd56   : data <= 16'hE540;
            10'd57   : data <= 16'hE4D3;
            10'd58   : data <= 16'hE466;
            10'd59   : data <= 16'hE3FA;
            10'd60   : data <= 16'hE38E;

            10'd61   : data <= 16'hE322;
            10'd62   : data <= 16'hE2B7;
            10'd63   : data <= 16'hE24C;
            10'd64   : data <= 16'hE1E1;
            10'd65   : data <= 16'hE177;
            10'd66   : data <= 16'hE10E;
            10'd67   : data <= 16'hE0A4;
            10'd68   : data <= 16'hE03B;
            10'd69   : data <= 16'hDFD3;
            10'd70   : data <= 16'hDF6B;

            10'd71    : data <= 16'hDF03;
            10'd72    : data <= 16'hDE9B;
            10'd73    : data <= 16'hDE34;
            10'd74    : data <= 16'hDDCE;
            10'd75    : data <= 16'hDD67;
            10'd76    : data <= 16'hDD01;
            10'd77    : data <= 16'hDC9C;
            10'd78    : data <= 16'hDC37;
            10'd79    : data <= 16'hDBD2;
            10'd80    : data <= 16'hDB6D;
            
            10'd81    : data <= 16'hDB09;
            10'd82    : data <= 16'hDAA5;
            10'd83    : data <= 16'hDA42;
            10'd84    : data <= 16'hD9DF;
            10'd85    : data <= 16'hD97C;
            10'd86    : data <= 16'hD91A;
            10'd87    : data <= 16'hD8B8;
            10'd88    : data <= 16'hD856;
            10'd89    : data <= 16'hD7F5;    
            10'd90    : data <= 16'hD794;

            10'd91   : data <= 16'hD733;
            10'd92   : data <= 16'hD6D3;
            10'd93   : data <= 16'hD673;
            10'd94   : data <= 16'hD613;
            10'd95   : data <= 16'hD5B4;
            10'd96   : data <= 16'hD555;
            10'd97   : data <= 16'hD4F6;
            10'd98   : data <= 16'hD498;
            10'd99   : data <= 16'hD43A;
            10'd100  : data <= 16'hD3DC; 

            10'd101   : data <= 16'hD37F;
            10'd102   : data <= 16'hD322;
            10'd103   : data <= 16'hD2C5;
            10'd104   : data <= 16'hD269;
            10'd105   : data <= 16'hD20D;
            10'd106   : data <= 16'hD1B1;
            10'd107   : data <= 16'hD155;
            10'd108   : data <= 16'hD0FA;
            10'd109   : data <= 16'hD09F;
            10'd110   : data <= 16'hD045;          

            10'd111    : data <= 16'hCFEB;
            10'd112    : data <= 16'hCF91;
            10'd113    : data <= 16'hCF37;
            10'd114    : data <= 16'hCEDE;
            10'd115    : data <= 16'hCE85;
            10'd116    : data <= 16'hCE2C;
            10'd117    : data <= 16'hCDD4;
            10'd118    : data <= 16'hCD7C;
            10'd119    : data <= 16'hCD24;
            10'd120    : data <= 16'hCCCC;    

            10'd121   : data <= 16'hCC75;
            10'd122   : data <= 16'hCC1E;
            10'd123   : data <= 16'hCBC7;
            10'd124   : data <= 16'hCB71;
            10'd125   : data <= 16'hCB1B;
            10'd126   : data <= 16'hCAC5;
            10'd127   : data <= 16'hCA70;
            10'd128   : data <= 16'hCA1A;
            10'd129   : data <= 16'hC9C5;
            10'd130   : data <= 16'hC971;           

            10'd131   : data <= 16'hC91C;
            10'd132   : data <= 16'hC8C8;
            10'd133   : data <= 16'hC874;
            10'd134   : data <= 16'hC821;
            10'd135   : data <= 16'hC7CE;
            10'd136   : data <= 16'hC77B;
            10'd137   : data <= 16'hC728;
            10'd138   : data <= 16'hC6D5;
            10'd139   : data <= 16'hC683;
            10'd140   : data <= 16'hC631;            

            10'd141   : data <= 16'hC5DF;
            10'd142   : data <= 16'hC58E;
            10'd143   : data <= 16'hC53D;
            10'd144   : data <= 16'hC4EC;
            10'd145   : data <= 16'hC49B;
            10'd146   : data <= 16'hC44B;
            10'd147   : data <= 16'hC3FB;
            10'd148   : data <= 16'hC3AB;
            10'd149   : data <= 16'hC35B;
            10'd150   : data <= 16'hC30C;          

            10'd151   : data <= 16'hC2BD;
            10'd152   : data <= 16'hC26E;
            10'd153   : data <= 16'hC21F;
            10'd154   : data <= 16'hC1D1;
            10'd155   : data <= 16'hC183;
            10'd156   : data <= 16'hC135;
            10'd157   : data <= 16'hC0E7;
            10'd158   : data <= 16'hC09A;
            10'd159   : data <= 16'hC04C;
            10'd160   : data <= 16'hC000;            

            10'd161  : data <= 16'hBFB3; 
            10'd162  : data <= 16'hBF66; 
            10'd163  : data <= 16'hBF1A; 
            10'd164  : data <= 16'hBECE; 
            10'd165  : data <= 16'hBE82; 
            10'd166  : data <= 16'hBE37; 
            10'd167  : data <= 16'hBDEC; 
            10'd168  : data <= 16'hBDA1; 
            10'd169  : data <= 16'hBD56; 
            10'd170  : data <= 16'hBD0B;            

            10'd171  : data <= 16'hBCC1; 
            10'd172  : data <= 16'hBC77; 
            10'd173  : data <= 16'hBC2D; 
            10'd174  : data <= 16'hBBE3; 
            10'd175  : data <= 16'hBB9A; 
            10'd176  : data <= 16'hBB51; 
            10'd177  : data <= 16'hBB08; 
            10'd178  : data <= 16'hBABF; 
            10'd179  : data <= 16'hBA76; 
            10'd180  : data <= 16'hBA2E;            

            10'd181  : data <= 16'hB9E6;
            10'd182  : data <= 16'hB99E;
            10'd183  : data <= 16'hB956;
            10'd184  : data <= 16'hB90F;
            10'd185  : data <= 16'hB8C8;
            10'd186  : data <= 16'hB881;
            10'd187  : data <= 16'hB83A;
            10'd188  : data <= 16'hB7F3;
            10'd189  : data <= 16'hB7AD;
            10'd190  : data <= 16'hB767;

            10'd191   : data <= 16'hB721;
            10'd192   : data <= 16'hB6DB;
            10'd193   : data <= 16'hB695;
            10'd194   : data <= 16'hB650;
            10'd195   : data <= 16'hB60B;
            10'd196   : data <= 16'hB5C6;
            10'd197   : data <= 16'hB581;
            10'd198   : data <= 16'hB53D;
            10'd199   : data <= 16'hB4F8;
            10'd200   : data <= 16'hB4B4;

            10'd201   : data <= 16'hB470;
            10'd202   : data <= 16'hB42D;
            10'd203   : data <= 16'hB3E9;
            10'd204   : data <= 16'hB3A6;
            10'd205   : data <= 16'hB363;
            10'd206   : data <= 16'hB320;
            10'd207   : data <= 16'hB2DD;
            10'd208   : data <= 16'hB29A;
            10'd209   : data <= 16'hB258;
            10'd210   : data <= 16'hB216;           

            10'd211   : data <= 16'hB1D4;
            10'd212   : data <= 16'hB192;
            10'd213   : data <= 16'hB150;
            10'd214   : data <= 16'hB10F;
            10'd215   : data <= 16'hB0CE;
            10'd216   : data <= 16'hB08D;
            10'd217   : data <= 16'hB04C;
            10'd218   : data <= 16'hB00B;
            10'd219   : data <= 16'hAFCB;
            10'd220   : data <= 16'hAF8A;            

            10'd221    : data <= 16'hAF4A;
            10'd222    : data <= 16'hAF0A;
            10'd223    : data <= 16'hAECB;
            10'd224    : data <= 16'hAE8B;
            10'd225    : data <= 16'hAE4C;
            10'd226    : data <= 16'hAE0D;
            10'd227    : data <= 16'hADCE;
            10'd228    : data <= 16'hAD8F;
            10'd229    : data <= 16'hAD50;
            10'd230    : data <= 16'hAD12;            

            10'd231    : data <= 16'hACD3;
            10'd232    : data <= 16'hAC95;
            10'd233    : data <= 16'hAC57;
            10'd234    : data <= 16'hAC19;
            10'd235    : data <= 16'hABDC;
            10'd236    : data <= 16'hAB9E;
            10'd237    : data <= 16'hAB61;
            10'd238    : data <= 16'hAB24;
            10'd239    : data <= 16'hAAE7;
            10'd240    : data <= 16'hAAAA;
            
            default : data <= 0;
        endcase
endmodule
