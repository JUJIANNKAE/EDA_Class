// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Mar  2 11:20:33 2025
// Host        : arch running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/jk/Documents/FPGA/EDA_Class/DDS_Vivado/vivado/DDS.gen/sources_1/ip/rom/rom_sim_netlist.v
// Design      : rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module rom
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rom.mem" *) 
  (* C_INIT_FILE_NAME = "rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  rom_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19920)
`pragma protect data_block
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
J4UDvHlXNR/fEZ2zNTwKVgp16j1E9dDWOFZu
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
