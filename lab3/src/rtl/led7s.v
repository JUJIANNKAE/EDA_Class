//译码器
module led7s(datain,ledout);
input[3:0] datain;
output reg[6:0] ledout;
always begin case(datain)
0: ledout<=7'b1000000;
1: ledout<=7'b1111001;
2: ledout<=7'b0100100;
3: ledout<=7'b0110000;
4: ledout<=7'b0011001;
5: ledout<=7'b0010010;
6: ledout<=7'b0000010;
7: ledout<=7'b1111000;
default:ledout<=7'b1000000;
endcase end
endmodule