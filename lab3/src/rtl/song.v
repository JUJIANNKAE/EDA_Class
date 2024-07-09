module song (
    input  wire       clk50m,
    output reg        speaker,  //锁定 GPIO_0 引脚
    output wire [6:0] hign_7s,  //用数码管 hex2 显示高音音 
    output wire [6:0] med_7s,   //用数码管 hex1 显示高音音符
    output wire [6:0] low_7s    //用数码管 hex0 显示高音音符
);
    reg clk_6mhz;  //产生音频的基准频率
    reg clk_4hz;  //控制音长的时钟频率
    reg [13:0] divider, origin;
    reg       carry;
    reg [7:0] counter;
    reg [3:0] hign, med, low;
    reg [ 2:0] count8;
    reg [19:0] count20;

    //50mhz 分频得到 6.25mhz
    always @(posedge clk50m) begin
        if (count8 == 7) begin
            count8   <= 0;
            clk_6mhz <= 1;
        end else begin
            count8   <= count8 + 1;
            clk_6mhz <= 0;
        end
    end

    //将 6m（实际为 6.25m）分成 4hz
    always @(posedge clk_6mhz) begin
        if (count20 == 781250) begin
            clk_4hz <= ~clk_4hz;
            count20 <= 0;
        end else count20 <= count20 + 1;
    end

    //通过置数，改变分频比
    always @(posedge clk_6mhz) begin
        if (divider == 16383) begin
            carry   <= 1;
            divider <= origin;
        end else begin
            divider <= divider + 1;
            carry   <= 0;
        end
    end

    //2 分频得到方波
    always @(posedge carry) begin
        speaker <= ~speaker;
    end

    //根据不同的音符，设置分频比
    always @(posedge clk_4hz) begin
        case ({
            hign, med, low
        })
            'h001: origin <= 4915;
            'h002: origin <= 6168;
            'h003: origin <= 7281;
            'h004: origin <= 7792;
            'h005: origin <= 8730;
            'h006: origin <= 9565;
            'h007: origin <= 10310;
            'h010: origin <= 10647;
            'h020: origin <= 11272;
            'h030: origin <= 11831;
            'h040: origin <= 12094;
            'h050: origin <= 12556;
            'h060: origin <= 12974;
            'h070: origin <= 13346;
            'h100: origin <= 13516;
            'h200: origin <= 13829;
            'h300: origin <= 14109;
            'h400: origin <= 14235;
            'h500: origin <= 14470;
            'h600: origin <= 14678;
            'h700: origin <= 14864;
            'h000: origin <= 16383;
        endcase
    end

    // 两只老虎
    always @(posedge clk_4hz) begin
        if (counter == 71) counter <= 0;  //计时，实现循环演奏
        else counter <= counter + 1;
        case (counter)
            0: {hign, med, low} <= 'h010;  //低音 3，持续四个节拍
            1: {hign, med, low} <= 'h010;
            2: {hign, med, low} <= 'h020;
            3: {hign, med, low} <= 'h020;
            4: {hign, med, low} <= 'h030;  //低音 5，持续三个节拍
            5: {hign, med, low} <= 'h030;
            6: {hign, med, low} <= 'h010;
            7: {hign, med, low} <= 'h010;

            8:  {hign, med, low} <= 'h010;  //中音 1，持续三个节拍
            9:  {hign, med, low} <= 'h010;
            10: {hign, med, low} <= 'h020;
            11: {hign, med, low} <= 'h020;
            12: {hign, med, low} <= 'h030;
            13: {hign, med, low} <= 'h030;
            14: {hign, med, low} <= 'h010;
            15: {hign, med, low} <= 'h010;

            16: {hign, med, low} <= 'h030;
            17: {hign, med, low} <= 'h030;
            18: {hign, med, low} <= 'h040;
            19: {hign, med, low} <= 'h040;
            20: {hign, med, low} <= 'h050;
            21: {hign, med, low} <= 'h050;
            22: {hign, med, low} <= 'h050;
            23: {hign, med, low} <= 'h050;

            24: {hign, med, low} <= 'h030;
            25: {hign, med, low} <= 'h030;
            26: {hign, med, low} <= 'h040;
            27: {hign, med, low} <= 'h040;
            28: {hign, med, low} <= 'h050;
            29: {hign, med, low} <= 'h050;
            30: {hign, med, low} <= 'h050;
            31: {hign, med, low} <= 'h050;


            32: {hign, med, low} <= 'h050;
            33: {hign, med, low} <= 'h060;
            34: {hign, med, low} <= 'h050;
            35: {hign, med, low} <= 'h040;
            36: {hign, med, low} <= 'h030;
            37: {hign, med, low} <= 'h030;
            38: {hign, med, low} <= 'h010;
            39: {hign, med, low} <= 'h010;

            40: {hign, med, low} <= 'h050;
            41: {hign, med, low} <= 'h060;
            42: {hign, med, low} <= 'h050;
            43: {hign, med, low} <= 'h040;
            44: {hign, med, low} <= 'h030;
            45: {hign, med, low} <= 'h030;
            46: {hign, med, low} <= 'h010;
            47: {hign, med, low} <= 'h010;

            48: {hign, med, low} <= 'h030;
            49: {hign, med, low} <= 'h030;
            50: {hign, med, low} <= 'h050;
            51: {hign, med, low} <= 'h050;
            52: {hign, med, low} <= 'h010;
            53: {hign, med, low} <= 'h010;
            54: {hign, med, low} <= 'h010;
            55: {hign, med, low} <= 'h010;

            56: {hign, med, low} <= 'h030;
            57: {hign, med, low} <= 'h030;
            58: {hign, med, low} <= 'h050;
            59: {hign, med, low} <= 'h050;
            60: {hign, med, low} <= 'h010;
            61: {hign, med, low} <= 'h010;
            62: {hign, med, low} <= 'h010;
            63: {hign, med, low} <= 'h010;



            64: {hign, med, low} <= 'h030;  //演奏到此小节结束
            65: {hign, med, low} <= 'h030;
            66: {hign, med, low} <= 'h050;
            67: {hign, med, low} <= 'h050;
            68: {hign, med, low} <= 'h010;
            69: {hign, med, low} <= 'h010;
            70: {hign, med, low} <= 'h010;
            71: {hign, med, low} <= 'h010;
            default: {hign, med, low} <= 'h000;
        endcase
    end

    // // 梁祝
    // always @(posedge clk_4hz) begin
    //     if (counter == 135) counter <= 0;  //计时，实现循环演奏
    //     else counter <= counter + 1;
    //     case (counter)
    //         0: {hign, med, low} <= 'h003;  //低音 3，持续四个节拍
    //         1: {hign, med, low} <= 'h003;
    //         2: {hign, med, low} <= 'h003;
    //         3: {hign, med, low} <= 'h003;
    //         4: {hign, med, low} <= 'h005;  //低音 5，持续三个节拍
    //         5: {hign, med, low} <= 'h005;
    //         6: {hign, med, low} <= 'h005;
    //         7: {hign, med, low} <= 'h006;
    //         8: {hign, med, low} <= 'h010;  //中音 1，持续三个节拍
    //         9: {hign, med, low} <= 'h010;
    //         10: {hign, med, low} <= 'h010;
    //         11: {hign, med, low} <= 'h020;
    //         12: {hign, med, low} <= 'h006;
    //         13: {hign, med, low} <= 'h010;
    //         14: {hign, med, low} <= 'h005;
    //         15: {hign, med, low} <= 'h005;
    //         16: {hign, med, low} <= 'h050;
    //         17: {hign, med, low} <= 'h050;
    //         18: {hign, med, low} <= 'h050;
    //         19: {hign, med, low} <= 'h100;
    //         20: {hign, med, low} <= 'h060;
    //         21: {hign, med, low} <= 'h050;
    //         22: {hign, med, low} <= 'h030;
    //         23: {hign, med, low} <= 'h050;
    //         24: {hign, med, low} <= 'h020;
    //         25: {hign, med, low} <= 'h020;
    //         26: {hign, med, low} <= 'h020;
    //         27: {hign, med, low} <= 'h020;
    //         28: {hign, med, low} <= 'h020;
    //         29: {hign, med, low} <= 'h020;
    //         30: {hign, med, low} <= 'h020;
    //         31: {hign, med, low} <= 'h020;
    //         32: {hign, med, low} <= 'h020;
    //         33: {hign, med, low} <= 'h020;
    //         34: {hign, med, low} <= 'h020;
    //         35: {hign, med, low} <= 'h030;
    //         36: {hign, med, low} <= 'h007;
    //         37: {hign, med, low} <= 'h007;
    //         38: {hign, med, low} <= 'h006;
    //         39: {hign, med, low} <= 'h006;
    //         40: {hign, med, low} <= 'h005;
    //         41: {hign, med, low} <= 'h005;
    //         42: {hign, med, low} <= 'h005;
    //         43: {hign, med, low} <= 'h006;
    //         44: {hign, med, low} <= 'h010;
    //         45: {hign, med, low} <= 'h010;
    //         46: {hign, med, low} <= 'h020;
    //         47: {hign, med, low} <= 'h020;
    //         48: {hign, med, low} <= 'h003;
    //         49: {hign, med, low} <= 'h003;
    //         50: {hign, med, low} <= 'h010;
    //         51: {hign, med, low} <= 'h010;
    //         52: {hign, med, low} <= 'h006;
    //         53: {hign, med, low} <= 'h005;
    //         54: {hign, med, low} <= 'h006;
    //         55: {hign, med, low} <= 'h001;
    //         56: {hign, med, low} <= 'h005;
    //         57: {hign, med, low} <= 'h005;
    //         58: {hign, med, low} <= 'h005;
    //         59: {hign, med, low} <= 'h005;
    //         60: {hign, med, low} <= 'h005;
    //         61: {hign, med, low} <= 'h005;
    //         62: {hign, med, low} <= 'h005;
    //         63: {hign, med, low} <= 'h005;
    //         64: {hign, med, low} <= 'h030;
    //         65: {hign, med, low} <= 'h030;
    //         66: {hign, med, low} <= 'h030;
    //         67: {hign, med, low} <= 'h050;
    //         68: {hign, med, low} <= 'h007;
    //         69: {hign, med, low} <= 'h007;
    //         70: {hign, med, low} <= 'h020;
    //         71: {hign, med, low} <= 'h020;
    //         72: {hign, med, low} <= 'h006;
    //         73: {hign, med, low} <= 'h010;
    //         74: {hign, med, low} <= 'h005;
    //         75: {hign, med, low} <= 'h005;
    //         76: {hign, med, low} <= 'h005;
    //         77: {hign, med, low} <= 'h005;
    //         78: {hign, med, low} <= 'h000;
    //         79: {hign, med, low} <= 'h000;
    //         80: {hign, med, low} <= 'h003;
    //         81: {hign, med, low} <= 'h005;
    //         82: {hign, med, low} <= 'h005;
    //         83: {hign, med, low} <= 'h003;
    //         84: {hign, med, low} <= 'h005;
    //         85: {hign, med, low} <= 'h006;
    //         86: {hign, med, low} <= 'h007;
    //         87: {hign, med, low} <= 'h020;
    //         88: {hign, med, low} <= 'h006;
    //         89: {hign, med, low} <= 'h006;
    //         90: {hign, med, low} <= 'h006;
    //         91: {hign, med, low} <= 'h006;
    //         92: {hign, med, low} <= 'h006;
    //         93: {hign, med, low} <= 'h006;
    //         94: {hign, med, low} <= 'h005;
    //         95: {hign, med, low} <= 'h006;
    //         96: {hign, med, low} <= 'h010;
    //         97: {hign, med, low} <= 'h010;
    //         98: {hign, med, low} <= 'h010;
    //         99: {hign, med, low} <= 'h020;
    //         100: {hign, med, low} <= 'h050;
    //         101: {hign, med, low} <= 'h050;
    //         102: {hign, med, low} <= 'h030;
    //         103: {hign, med, low} <= 'h030;
    //         104: {hign, med, low} <= 'h020;
    //         105: {hign, med, low} <= 'h020;
    //         106: {hign, med, low} <= 'h030;
    //         107: {hign, med, low} <= 'h020;
    //         108: {hign, med, low} <= 'h010;
    //         109: {hign, med, low} <= 'h010;
    //         110: {hign, med, low} <= 'h006;
    //         111: {hign, med, low} <= 'h005;
    //         112: {hign, med, low} <= 'h003;
    //         113: {hign, med, low} <= 'h003;
    //         114: {hign, med, low} <= 'h003;
    //         115: {hign, med, low} <= 'h003;
    //         116: {hign, med, low} <= 'h010;
    //         117: {hign, med, low} <= 'h010;
    //         118: {hign, med, low} <= 'h010;
    //         119: {hign, med, low} <= 'h010;
    //         120: {hign, med, low} <= 'h006;
    //         121: {hign, med, low} <= 'h010;
    //         122: {hign, med, low} <= 'h006;
    //         123: {hign, med, low} <= 'h005;
    //         124: {hign, med, low} <= 'h003;
    //         125: {hign, med, low} <= 'h005;
    //         126: {hign, med, low} <= 'h006;
    //         127: {hign, med, low} <= 'h001;
    //         128: {hign, med, low} <= 'h005;  //演奏到此小节结束
    //         129: {hign, med, low} <= 'h005;
    //         130: {hign, med, low} <= 'h005;
    //         131: {hign, med, low} <= 'h005;
    //         132: {hign, med, low} <= 'h005;
    //         133: {hign, med, low} <= 'h005;
    //         134: {hign, med, low} <= 'h003;
    //         135: {hign, med, low} <= 'h005;
    //         default: {hign, med, low} <= 'h000;
    //     endcase
    // end

    led7s u1 (
        hign,
        hign_7s
    );  //译码器的例化

    led7s u2 (
        med,
        med_7s
    );

    led7s u3 (
        low,
        low_7s
    );

endmodule
