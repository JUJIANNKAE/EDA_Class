// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Mar  2 11:20:32 2025
// Host        : arch running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_sim_netlist.v
// Design      : rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20048)
`pragma protect data_block
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
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
