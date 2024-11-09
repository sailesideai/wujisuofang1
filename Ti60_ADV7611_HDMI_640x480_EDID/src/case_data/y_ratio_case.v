module  y_ratio_case(data,raddr);
input        [10:0]     raddr;
output reg   [15:0]    data;

always@(*)
    case(raddr)
        11'd0   :   data  <=16'd40960;
        11'd1   :   data  <=16'hff99;
        11'd2   :   data  <=16'hff33;
        11'd3   :   data  <=16'hFECE;
        11'd4   :   data  <=16'hFE68;
        11'd5   :   data  <=16'hFE03;
        11'd6   :   data  <=16'hFD9F;
        11'd7   :   data  <=16'hFD3A;
        11'd8   :   data  <=16'hFCD6;
        11'd9   :   data  <=16'hFC73;
        11'd10   :   data <=16'hFC0F;

        11'd11   :   data <=16'hFBAC;
        11'd12   :   data <=16'hFB49;
        11'd13   :   data <=16'hFAE7;
        11'd14   :   data <=16'hFA85;
        11'd15   :   data <=16'hFA23;
        11'd16   :   data <=16'hF9C1;
        11'd17   :   data <=16'hF960;
        11'd18   :   data <=16'hF8FF;
        11'd19   :   data <=16'hF89E;
        11'd20   :   data <=16'hF83E;

        11'd21   :   data <=16'hF7DD;
        11'd22   :   data <=16'hF77E;
        11'd23   :   data <=16'hF71E;
        11'd24   :   data <=16'hF6BF;
        11'd25   :   data <=16'hF660;
        11'd26   :   data <=16'hF601;
        11'd27   :   data <=16'hF5A3;
        11'd28   :   data <=16'hF544;
        11'd29   :   data <=16'hF4E7;
        11'd30   :   data <=16'hF489;

        11'd31   :   data <=16'hF42C;
        11'd32   :   data <=16'hF3CF;
        11'd33   :   data <=16'hF372;
        11'd34   :   data <=16'hF316;
        11'd35   :   data <=16'hF2B9;
        11'd36   :   data <=16'hF25D;
        11'd37   :   data <=16'hF202;
        11'd38   :   data <=16'hF1A6;
        11'd39   :   data <=16'hF14B;
        11'd40   :   data <=16'hF0F0;

        11'd41   :   data <= 16'hF096;
        11'd42   :   data <= 16'hF03C;
        11'd43   :   data <= 16'hEFE2;
        11'd44   :   data <= 16'hEF88;
        11'd45   :   data <= 16'hEF2E;
        11'd46   :   data <= 16'hEED5;
        11'd47   :   data <= 16'hEE7C;
        11'd48   :   data <= 16'hEE23;
        11'd49   :   data <= 16'hEDCB;
        11'd50   :   data <= 16'hED73;

        11'd51   :   data <=16'hED1B;
        11'd52   :   data <=16'hECC3;
        11'd53   :   data <=16'hEC6B;
        11'd54   :   data <=16'hEC14;
        11'd55   :   data <=16'hEBBD;
        11'd56   :   data <=16'hEB66;
        11'd57   :   data <=16'hEB10;
        11'd58   :   data <=16'hEABA;
        11'd59   :   data <=16'hEA64;
        11'd60   :   data <=16'hEA0E;

        11'd61   :   data <=16'hE9B9;
        11'd62   :   data <=16'hE963;
        11'd63   :   data <=16'hE90E;
        11'd64   :   data <=16'hE8BA;
        11'd65   :   data <=16'hE865;
        11'd66   :   data <=16'hE811;
        11'd67   :   data <=16'hE7BD;
        11'd68   :   data <=16'hE769;
        11'd69   :   data <=16'hE716;
        11'd70   :   data <=16'hE6C2;

        11'd71   :   data <=16'hE66F;
        11'd72   :   data <=16'hE61C;
        11'd73   :   data <=16'hE5CA;
        11'd74   :   data <=16'hE577;
        11'd75   :   data <=16'hE525;
        11'd76   :   data <=16'hE4D3;
        11'd77   :   data <=16'hE481;
        11'd78   :   data <=16'hE430;
        11'd79   :   data <=16'hE3DF;
        11'd80   :   data <=16'hE38E;

        11'd81   :   data <=16'hE33D;
        11'd82   :   data <=16'hE2EC;
        11'd83   :   data <=16'hE29C;
        11'd84   :   data <=16'hE24C;
        11'd85   :   data <=16'hE1FC;
        11'd86   :   data <=16'hE1AC;
        11'd87   :   data <=16'hE15D;
        11'd88   :   data <=16'hE10E;
        11'd89   :   data <=16'hE0BF;
        11'd90   :   data <=16'hE070;

        11'd91   :   data <=16'hE021;
        11'd92   :   data <=16'hDFD3;
        11'd93   :   data <=16'hDF85;
        11'd94   :   data <=16'hDF37;
        11'd95   :   data <=16'hDEE9;
        11'd96   :   data <=16'hDE9B;
        11'd97   :   data <=16'hDE4E;
        11'd98   :   data <=16'hDE01;
        11'd99   :   data <=16'hDDB4;
        11'd100   :   data<=16'hDD67;

        11'd101   :   data <=16'hDD1B;
        11'd102   :   data <=16'hDCCF;
        11'd103   :   data <=16'hDC82;
        11'd104   :   data <=16'hDC37;
        11'd105   :   data <=16'hDBEB;
        11'd106   :   data <=16'hDB9F;
        11'd107   :   data <=16'hDB54;
        11'd108   :   data <=16'hDB09;
        11'd109   :   data <=16'hDABE;
        11'd110   :   data <=16'hDA74;

        11'd111   :   data <=16'hDA29;
        11'd112   :   data <=16'hD9DF;
        11'd113   :   data <=16'hD995;
        11'd114   :   data <=16'hD94B;
        11'd115   :   data <=16'hD901;
        11'd116   :   data <=16'hD8B8;
        11'd117   :   data <=16'hD86E;
        11'd118   :   data <=16'hD825;
        11'd119   :   data <=16'hD7DC;
        11'd120   :   data <=16'hD794;

        11'd121   :   data <=16'hD74B;
        11'd122   :   data <=16'hD703;
        11'd123   :   data <=16'hD6BB;
        11'd124   :   data <=16'hD673;
        11'd125   :   data <=16'hD62B;
        11'd126   :   data <=16'hD5E3;
        11'd127   :   data <=16'hD59C;
        11'd128   :   data <=16'hD555;
        11'd129   :   data <=16'hD50E;
        11'd130   :   data <=16'hD4C7;

        11'd131   :   data <=16'hD480;
        11'd132   :   data <=16'hD43A;
        11'd133   :   data <=16'hD3F4;
        11'd134   :   data <=16'hD3AD;
        11'd135   :   data <=16'hD368;
        11'd136   :   data <=16'hD322;
        11'd137   :   data <=16'hD2DC;
        11'd138   :   data <=16'hD297;
        11'd139   :   data <=16'hD252;
        11'd140   :   data <=16'hD20D;

        11'd141   :   data <=16'hD1C8;
        11'd142   :   data <=16'hD183;
        11'd143   :   data <=16'hD13F;
        11'd144   :   data <=16'hD0FA;
        11'd145   :   data <=16'hD0B6;
        11'd146   :   data <=16'hD072;
        11'd147   :   data <=16'hD02E;
        11'd148   :   data <=16'hCFEB;
        11'd149   :   data <=16'hCFA7;
        11'd150   :   data <=16'hCF64;

        11'd151   :   data <=16'hCF21;
        11'd152   :   data <=16'hCEDE;
        11'd153   :   data <=16'hCE9B;
        11'd154   :   data <=16'hCE58;
        11'd155   :   data <=16'hCE16;
        11'd156   :   data <=16'hCDD4;
        11'd157   :   data <=16'hCD92;
        11'd158   :   data <=16'hCD50;
        11'd159   :   data <=16'hCD0E;
        11'd160   :   data <=16'hCCCC;

        11'd161   :   data <=16'hCC8B;
        11'd162   :   data <=16'hCC4A;
        11'd163   :   data <=16'hCC08;
        11'd164   :   data <=16'hCBC7;
        11'd165   :   data <=16'hCB87;
        11'd166   :   data <=16'hCB46;
        11'd167   :   data <=16'hCB06;
        11'd168   :   data <=16'hCAC5;
        11'd169   :   data <=16'hCA85;
        11'd170   :   data <=16'hCA45;

        11'd171   :   data <=16'hCA05;
        11'd172   :   data <=16'hC9C5;
        11'd173   :   data <=16'hC986;
        11'd174   :   data <=16'hC947;
        11'd175   :   data <=16'hC907;
        11'd176   :   data <=16'hC8C8;
        11'd177   :   data <=16'hC889;
        11'd178   :   data <=16'hC84B;
        11'd179   :   data <=16'hC80C;
        11'd180   :   data <=16'hC7CE;

        11'd181   :   data <=16'hC78F;
        11'd182   :   data <=16'hC751;
        11'd183   :   data <=16'hC713;
        11'd184   :   data <=16'hC6D5;
        11'd185   :   data <=16'hC698;
        11'd186   :   data <=16'hC65A;
        11'd187   :   data <=16'hC61D;
        11'd188   :   data <=16'hC5DF;
        11'd189   :   data <=16'hC5A2;
        11'd190   :   data <=16'hC565;

        11'd191   :   data <=16'hC528;
        11'd192   :   data <=16'hC4EC;
        11'd193   :   data <=16'hC4AF;
        11'd194   :   data <=16'hC473;
        11'd195   :   data <=16'hC437;
        11'd196   :   data <=16'hC3FB;
        11'd197   :   data <=16'hC3BF;
        11'd198   :   data <=16'hC383;
        11'd199   :   data <=16'hC347;
        11'd200   :   data <=16'hC30C;

        11'd201   :   data <=16'hC2D0;
        11'd202   :   data <=16'hC295;
        11'd203   :   data <=16'hC25A;
        11'd204   :   data <=16'hC21F;
        11'd205   :   data <=16'hC1E4;
        11'd206   :   data <=16'hC1AA;
        11'd207   :   data <=16'hC16F;
        11'd208   :   data <=16'hC135;
        11'd209   :   data <=16'hC0FA;
        11'd210   :   data <=16'hC0C0;

        11'd211   :   data <=16'hC086;
        11'd212   :   data <=16'hC04C;
        11'd213   :   data <=16'hC013;
        11'd214   :   data <=16'hBFD9;
        11'd215   :   data <=16'hBFA0;
        11'd216   :   data <=16'hBF66;
        11'd217   :   data <=16'hBF2D;
        11'd218   :   data <=16'hBEF4;
        11'd219   :   data <=16'hBEBB;
        11'd220   :   data <=16'hBE82;

        11'd221   :   data <=16'hBE4A;
        11'd222   :   data <=16'hBE11;
        11'd223   :   data <=16'hBDD9;
        11'd224   :   data <=16'hBDA1;
        11'd225   :   data <=16'hBD69;
        11'd226   :   data <=16'hBD31;
        11'd227   :   data <=16'hBCF9;
        11'd228   :   data <=16'hBCC1;
        11'd229   :   data <=16'hBC89;
        11'd230   :   data <=16'hBC52;

        11'd231   :   data <=16'hBC1B;
        11'd232   :   data <=16'hBBE3;
        11'd233   :   data <=16'hBBAC;
        11'd234   :   data <=16'hBB75;
        11'd235   :   data <=16'hBB3E;
        11'd236   :   data <=16'hBB08;
        11'd237   :   data <=16'hBAD1;
        11'd238   :   data <=16'hBA9B;
        11'd239   :   data <=16'hBA64;
        11'd240   :   data <=16'hBA2E;

        11'd241   :   data <=16'hB9F8;
        11'd242   :   data <=16'hB9C2;
        11'd243   :   data <=16'hB98C;
        11'd244   :   data <=16'hB956;
        11'd245   :   data <=16'hB921;
        11'd246   :   data <=16'hB8EB;
        11'd247   :   data <=16'hB8B6;
        11'd248   :   data <=16'hB881;
        11'd249   :   data <=16'hB84C;
        11'd250   :   data <=16'hB817;


        11'd251   :   data <=16'hB7E2;
        11'd252   :   data <=16'hB7AD;
        11'd253   :   data <=16'hB778;
        11'd254   :   data <=16'hB744;
        11'd255   :   data <=16'hB70F;
        11'd256   :   data <=16'hB6DB;
        11'd257   :   data <=16'hB6A7;
        11'd258   :   data <=16'hB673;
        11'd259   :   data <=16'hB63F;
        11'd260   :   data <=16'hB60B;

        11'd261   :   data <=16'hB5D7;
        11'd262   :   data <=16'hB5A4;
        11'd263   :   data <=16'hB570;
        11'd264   :   data <=16'hB53D;
        11'd265   :   data <=16'hB509;
        11'd266   :   data <=16'hB4D6;
        11'd267   :   data <=16'hB4A3;
        11'd268   :   data <=16'hB470;
        11'd269   :   data <=16'hB43D;
        11'd270   :   data <=16'hB40B;

        11'd271   :   data <=16'hB3D8;
        11'd272   :   data <=16'hB3A6;
        11'd273   :   data <=16'hB373;
        11'd274   :   data <=16'hB341;
        11'd275   :   data <=16'hB30F;
        11'd276   :   data <=16'hB2DD;
        11'd277   :   data <=16'hB2AB;
        11'd278   :   data <=16'hB279;
        11'd279   :   data <=16'hB247;
        11'd280   :   data <=16'hB216;

        11'd281   :   data <=16'hB1E4;
        11'd282   :   data <=16'hB1B3;
        11'd283   :   data <=16'hB182;
        11'd284   :   data <=16'hB150;
        11'd285   :   data <=16'hB11F;
        11'd286   :   data <=16'hB0EE;
        11'd287   :   data <=16'hB0BD;
        11'd288   :   data <=16'hB08D;
        11'd289   :   data <=16'hB05C;
        11'd290   :   data <=16'hB02C;


        11'd291   :   data <=16'hAFFB;
        11'd292   :   data <=16'hAFCB;
        11'd293   :   data <=16'hAF9B;
        11'd294   :   data <=16'hAF6A;
        11'd295   :   data <=16'hAF3A;
        11'd296   :   data <=16'hAF0A;
        11'd297   :   data <=16'hAEDB;
        11'd298   :   data <=16'hAEAB;
        11'd299   :   data <=16'hAE7B;
        11'd300   :   data <=16'hAE4C;

        11'd301   :   data <=16'hAE1C;
        11'd302   :   data <=16'hADED;
        11'd303   :   data <=16'hADBE;
        11'd304   :   data <=16'hAD8F;
        11'd305   :   data <=16'hAD60;
        11'd306   :   data <=16'hAD31;
        11'd307   :   data <=16'hAD02;
        11'd308   :   data <=16'hACD3;
        11'd309   :   data <=16'hACA5;
        11'd310   :   data <=16'hAC76;

        11'd311   :   data <=16'hAC48;
        11'd312   :   data <=16'hAC19;
        11'd313   :   data <=16'hABEB;
        11'd314   :   data <=16'hABBD;
        11'd315   :   data <=16'hAB8F;
        11'd316   :   data <=16'hAB61;
        11'd317   :   data <=16'hAB33;
        11'd318   :   data <=16'hAB05;
        11'd319   :   data <=16'hAAD8;
        11'd320   :   data <=16'hAAAA;

        11'd321   :   data <=16'hAA7D;
        11'd322   :   data <=16'hAA4F;
        11'd323   :   data <=16'hAA22;
        11'd324   :   data <=16'hA9F5;
        11'd325   :   data <=16'hA9C8;
        11'd326   :   data <=16'hA99B;
        11'd327   :   data <=16'hA96E;
        11'd328   :   data <=16'hA941;
        11'd329   :   data <=16'hA914;
        11'd330   :   data <=16'hA8E8;

        11'd331   :   data <=16'hA8BB;
        11'd332   :   data <=16'hA88F;
        11'd333   :   data <=16'hA862;
        11'd334   :   data <=16'hA836;
        11'd335   :   data <=16'hA80A;
        11'd336   :   data <=16'hA7DE;
        11'd337   :   data <=16'hA7B2;
        11'd338   :   data <=16'hA786;
        11'd339   :   data <=16'hA75A;
        11'd340   :   data <=16'hA72F;

        11'd341   :   data <=16'hA703;
        11'd342   :   data <=16'hA6D7;
        11'd343   :   data <=16'hA6AC;
        11'd344   :   data <=16'hA681;
        11'd345   :   data <=16'hA655;
        11'd346   :   data <=16'hA62A;
        11'd347   :   data <=16'hA5FF;
        11'd348   :   data <=16'hA5D4;
        11'd349   :   data <=16'hA5A9;
        11'd350   :   data <=16'hA57E;

        11'd351   :   data <=16'hA553;
        11'd352   :   data <=16'hA529;
        11'd353   :   data <=16'hA4FE;
        11'd354   :   data <=16'hA4D4;
        11'd355   :   data <=16'hA4A9;
        11'd356   :   data <=16'hA47F;
        11'd357   :   data <=16'hA455;
        11'd358   :   data <=16'hA42B;
        11'd359   :   data <=16'hA401;
        11'd360   :   data <=16'hA3D7;

        11'd361   :   data <=16'hA3AD;
        11'd362   :   data <=16'hA383;
        11'd363   :   data <=16'hA359;
        11'd364   :   data <=16'hA32F;
        11'd365   :   data <=16'hA306;
        11'd366   :   data <=16'hA2DC;
        11'd367   :   data <=16'hA2B3;
        11'd368   :   data <=16'hA28A;
        11'd369   :   data <=16'hA260;
        11'd370   :   data <=16'hA237;

        11'd371   :   data <=16'hA20E;
        11'd372   :   data <=16'hA1E5;
        11'd373   :   data <=16'hA1BC;
        11'd374   :   data <=16'hA193;
        11'd375   :   data <=16'hA16B;
        11'd376   :   data <=16'hA142;
        11'd377   :   data <=16'hA119;
        11'd378   :   data <=16'hA0F1;
        11'd379   :   data <=16'hA0C8;
        11'd380   :   data <=16'hA0A0;

        11'd381   :   data <=16'hA078;
        11'd382   :   data <=16'hA050;
        11'd383   :   data <=16'hA028;
        11'd384   :   data <=16'hA000;
        11'd385   :   data <=16'h9FD8;
        11'd386   :   data <=16'h9FB0;
        11'd387   :   data <=16'h9F88;
        11'd388   :   data <=16'h9F60;
        11'd389   :   data <=16'h9F38;
        11'd390   :   data <=16'h9F11;

        11'd391   :   data <=16'h9EE9;
        11'd392   :   data <=16'h9EC2;
        11'd393   :   data <=16'h9E9B;
        11'd394   :   data <=16'h9E73;
        11'd395   :   data <=16'h9E4C;
        11'd396   :   data <=16'h9E25;
        11'd397   :   data <=16'h9DFE;
        11'd398   :   data <=16'h9DD7;
        11'd399   :   data <=16'h9DB0;
        11'd400   :   data <=16'h9D89;

        11'd401   :   data <=16'h9D63;
        11'd402   :   data <=16'h9D3C;
        11'd403   :   data <=16'h9D15;
        11'd404   :   data <=16'h9CEF;
        11'd405   :   data <=16'h9CC8;
        11'd406   :   data <=16'h9CA2;
        11'd407   :   data <=16'h9C7C;
        11'd408   :   data <=16'h9C55;
        11'd409   :   data <=16'h9C2F;
        11'd410   :   data <=16'h9C09;

        11'd411   :   data <=16'h9BE3;
        11'd412   :   data <=16'h9BBD;
        11'd413   :   data <=16'h9B97;
        11'd414   :   data <=16'h9B72;
        11'd415   :   data <=16'h9B4C;
        11'd416   :   data <=16'h9B26;
        11'd417   :   data <=16'h9B01;
        11'd418   :   data <=16'h9ADB;
        11'd419   :   data <=16'h9AB6;
        11'd420   :   data <=16'h9A90;

        11'd421   :   data <=16'h9A6B;
        11'd422   :   data <=16'h9A46;
        11'd423   :   data <=16'h9A21;
        11'd424   :   data <=16'h99FC;
        11'd425   :   data <=16'h99D7;
        11'd426   :   data <=16'h99B2;
        11'd427   :   data <=16'h998D;
        11'd428   :   data <=16'h9968;
        11'd429   :   data <=16'h9943;
        11'd430   :   data <=16'h991F;

        11'd431   :   data <=16'h98FA;
        11'd432   :   data <=16'h98D5;
        11'd433   :   data <=16'h98B1;
        11'd434   :   data <=16'h988D;
        11'd435   :   data <=16'h9868;
        11'd436   :   data <=16'h9844;
        11'd437   :   data <=16'h9820;
        11'd438   :   data <=16'h97FC;
        11'd439   :   data <=16'h97D8;
        11'd440   :   data <=16'h97B4;

        11'd441   :   data <=16'h9790;
        11'd442   :   data <=16'h976C;
        11'd443   :   data <=16'h9748;
        11'd444   :   data <=16'h9724;
        11'd445   :   data <=16'h9701;
        11'd446   :   data <=16'h96DD;
        11'd447   :   data <=16'h96BA;
        11'd448   :   data <=16'h9696;
        11'd449   :   data <=16'h9673;
        11'd450   :   data <=16'h964F;

        11'd451   :   data <=16'h962C;
        11'd452   :   data <=16'h9609;
        11'd453   :   data <=16'h95E6;
        11'd454   :   data <=16'h95C3;
        11'd455   :   data <=16'h95A0;
        11'd456   :   data <=16'h957D;
        11'd457   :   data <=16'h955A;
        11'd458   :   data <=16'h9537;
        11'd459   :   data <=16'h9514;
        11'd460   :   data <=16'h94F2;

        11'd461   :   data <=16'h94CF;
        11'd462   :   data <=16'h94AC;
        11'd463   :   data <=16'h948A;
        11'd464   :   data <=16'h9467;
        11'd465   :   data <=16'h9445;
        11'd466   :   data <=16'h9423;
        11'd467   :   data <=16'h9400;
        11'd468   :   data <=16'h93DE;
        11'd469   :   data <=16'h93BC;
        11'd470   :   data <=16'h939A;

        11'd471   :   data <=16'h9378;
        11'd472   :   data <=16'h9356;
        11'd473   :   data <=16'h9334;
        11'd474   :   data <=16'h9312;
        11'd475   :   data <=16'h92F1;
        11'd476   :   data <=16'h92CF;
        11'd477   :   data <=16'h92AD;
        11'd478   :   data <=16'h928C;
        11'd479   :   data <=16'h926A;
        11'd480   :   data <=16'h9249;

        11'd481   :   data <=16'h9227;
        11'd482   :   data <=16'h9206;
        11'd483   :   data <=16'h91E5;
        11'd484   :   data <=16'h91C3;
        11'd485   :   data <=16'h91A2;
        11'd486   :   data <=16'h9181;
        11'd487   :   data <=16'h9160;
        11'd488   :   data <=16'h913F;
        11'd489   :   data <=16'h911E;
        11'd490   :   data <=16'h90FD;

        11'd491   :   data <=16'h90DC;
        11'd492   :   data <=16'h90BC;
        11'd493   :   data <=16'h909B;
        11'd494   :   data <=16'h907A;
        11'd495   :   data <=16'h905A;
        11'd496   :   data <=16'h9039;
        11'd497   :   data <=16'h9019;
        11'd498   :   data <=16'h8FF8;
        11'd499   :   data <=16'h8FD8;
        11'd500   :   data <=16'h8FB8;

        11'd501   :   data <=16'h8F97;
        11'd502   :   data <=16'h8F77;
        11'd503   :   data <=16'h8F57;
        11'd504   :   data <=16'h8F37;
        11'd505   :   data <=16'h8F17;
        11'd506   :   data <=16'h8EF7;
        11'd507   :   data <=16'h8ED7;
        11'd508   :   data <=16'h8EB7;
        11'd509   :   data <=16'h8E97;
        11'd510   :   data <=16'h8E78;

        11'd511   :   data <=16'h8E58;
        11'd512   :   data <=16'h8E38;
        11'd513   :   data <=16'h8E19;
        11'd514   :   data <=16'h8DF9;
        11'd515   :   data <=16'h8DDA;
        11'd516   :   data <=16'h8DBA;
        11'd517   :   data <=16'h8D9B;
        11'd518   :   data <=16'h8D7C;
        11'd519   :   data <=16'h8D5C;
        11'd520   :   data <=16'h8D3D;

        11'd521   :   data <=16'h8D1E;
        11'd522   :   data <=16'h8CFF;
        11'd523   :   data <=16'h8CE0;
        11'd524   :   data <=16'h8CC1;
        11'd525   :   data <=16'h8CA2;
        11'd526   :   data <=16'h8C83;
        11'd527   :   data <=16'h8C64;
        11'd528   :   data <=16'h8C46;
        11'd529   :   data <=16'h8C27;
        11'd530   :   data <=16'h8C08;

        11'd531   :   data <=16'h8BEA;
        11'd532   :   data <=16'h8BCB;
        11'd533   :   data <=16'h8BAD;
        11'd534   :   data <=16'h8B8E;
        11'd535   :   data <=16'h8B70;
        11'd536   :   data <=16'h8B51;
        11'd537   :   data <=16'h8B33;
        11'd538   :   data <=16'h8B15;
        11'd539   :   data <=16'h8AF7;
        11'd540   :   data <=16'h8AD8;

        11'd541   :   data <=16'h8ABA;
        11'd542   :   data <=16'h8A9C;
        11'd543   :   data <=16'h8A7E;
        11'd544   :   data <=16'h8A60;
        11'd545   :   data <=16'h8A42;
        11'd546   :   data <=16'h8A25;
        11'd547   :   data <=16'h8A07;
        11'd548   :   data <=16'h89E9;
        11'd549   :   data <=16'h89CB;
        11'd550   :   data <=16'h89AE;

        11'd551   :   data <=16'h8990;
        11'd552   :   data <=16'h8973;
        11'd553   :   data <=16'h8955;
        11'd554   :   data <=16'h8938;
        11'd555   :   data <=16'h891A;
        11'd556   :   data <=16'h88FD;
        11'd557   :   data <=16'h88E0;
        11'd558   :   data <=16'h88C2;
        11'd559   :   data <=16'h88A5;
        11'd560   :   data <=16'h8888;

        11'd561   :   data <=16'h886B;
        11'd562   :   data <=16'h884E;
        11'd563   :   data <=16'h8831;
        11'd564   :   data <=16'h8814;
        11'd565   :   data <=16'h87F7;
        11'd566   :   data <=16'h87DA;
        11'd567   :   data <=16'h87BD;
        11'd568   :   data <=16'h87A1;
        11'd569   :   data <=16'h8784;
        11'd570   :   data <=16'h8767;

        11'd571   :   data <=16'h874B;
        11'd572   :   data <=16'h872E;
        11'd573   :   data <=16'h8711;
        11'd574   :   data <=16'h86F5;
        11'd575   :   data <=16'h86D9;
        11'd576   :   data <=16'h86BC;
        11'd577   :   data <=16'h86A0;
        11'd578   :   data <=16'h8683;
        11'd579   :   data <=16'h8667;
        11'd580   :   data <=16'h864B;

        11'd581   :   data <=16'h862F;
        11'd582   :   data <=16'h8613;
        11'd583   :   data <=16'h85F7;
        11'd584   :   data <=16'h85DB;
        11'd585   :   data <=16'h85BF;
        11'd586   :   data <=16'h85A3;
        11'd587   :   data <=16'h8587;
        11'd588   :   data <=16'h856B;
        11'd589   :   data <=16'h854F;
        11'd590   :   data <=16'h8534;

        11'd591   :   data <=16'h8518;
        11'd592   :   data <=16'h84FC;
        11'd593   :   data <=16'h84E1;
        11'd594   :   data <=16'h84C5;
        11'd595   :   data <=16'h84A9;
        11'd596   :   data <=16'h848E;
        11'd597   :   data <=16'h8473;
        11'd598   :   data <=16'h8457;
        11'd599   :   data <=16'h843C;
        11'd600   :   data <=16'h8421;

        11'd601   :   data <=16'h8405;
        11'd602   :   data <=16'h83EA;
        11'd603   :   data <=16'h83CF;
        11'd604   :   data <=16'h83B4;
        11'd605   :   data <=16'h8399;
        11'd606   :   data <=16'h837E;
        11'd607   :   data <=16'h8363;
        11'd608   :   data <=16'h8348;
        11'd609   :   data <=16'h832D;
        11'd610   :   data <=16'h8312;

        11'd611   :   data <=16'h82F7;
        11'd612   :   data <=16'h82DC;
        11'd613   :   data <=16'h82C2;
        11'd614   :   data <=16'h82A7;
        11'd615   :   data <=16'h828C;
        11'd616   :   data <=16'h8272;
        11'd617   :   data <=16'h8257;
        11'd618   :   data <=16'h823D;
        11'd619   :   data <=16'h8222;
        11'd620   :   data <=16'h8208;

        11'd621   :   data <=16'h81ED;
        11'd622   :   data <=16'h81D3;
        11'd623   :   data <=16'h81B9;
        11'd624   :   data <=16'h819E;
        11'd625   :   data <=16'h8184;
        11'd626   :   data <=16'h816A;
        11'd627   :   data <=16'h8150;
        11'd628   :   data <=16'h8136;
        11'd629   :   data <=16'h811C;
        11'd630   :   data <=16'h8102;

        11'd631   :   data <=16'h80E8;
        11'd632   :   data <=16'h80CE;
        11'd633   :   data <=16'h80B4;
        11'd634   :   data <=16'h809A;
        11'd635   :   data <=16'h8080;
        11'd636   :   data <=16'h8066;
        11'd637   :   data <=16'h804C;
        11'd638   :   data <=16'h8033;
        11'd639   :   data <=16'h8019;
        11'd640  :   data <= 16'h8000;
        default  :   data <= 16'h0000;
    endcase

endmodule
