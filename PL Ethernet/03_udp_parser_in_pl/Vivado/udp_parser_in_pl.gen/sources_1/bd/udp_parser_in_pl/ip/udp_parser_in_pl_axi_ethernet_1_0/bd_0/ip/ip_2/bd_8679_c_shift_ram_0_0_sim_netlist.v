// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct  4 12:13:00 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/FPGA/Vivaldo Project/INTERFACE/PL
//               Ethernet/03_udp_parser_in_pl/Vivado/udp_parser_in_pl.gen/sources_1/bd/udp_parser_in_pl/ip/udp_parser_in_pl_axi_ethernet_1_0/bd_0/ip/ip_2/bd_8679_c_shift_ram_0_0_sim_netlist.v}
// Design      : bd_8679_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_8679_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_8679_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_8679_c_shift_ram_0_0_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
c/wA5liyV/LPsKRmFzwxOzMM9n38OKoskM2eV12+p8ymcpS5TSWtutYPfQvZnGZZfd8i/h93sskE
aYtyaj9r82ZsRS//wjee3CGcJ96gsie1s/zVMyvtQwl06PGFCfBpzauOVKiMwENeLpUT1RKqAXkx
Yl5ZRwDQye7scTEiJ00=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pvq46JXLahp5XPx+a/0qqI+q3DAS5hdJHtrc58f+wKPIWSonA73Ry+sA2G22W5m9gcLjdutlrO3Z
tCFoOk9903pekANOyDnxNVC3XokdoOx60qR9SkTdoRSoFtoxsXGHf/DcXUII9M+W0bO/CDmYDcNo
r7aqLbU+SA6OqBOCM8rMYE4IRqWsN0B39RVdHWhmWVgQBS2mZk+30c3XYyN7rnCOE6eaGwaVtnwH
VfWH9pTe4g8uibOl93VQ7HnnI1im9xFEv0e1HXGZooWf4JBBcPjWG2olWoMegh1BWyXPDYsLai8q
DiMBE0Qcpk5n0TNTCsarWZUuaxcDrGxLdPdlKQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mB8YWCR0O9x0T00SavylLJzD4EOwijo0xEcicZ6cVxQZWuyWbx+k/ZiPXGZlw54BI2rUVCcV2BLI
4gUw7aTkHqyMqWOZpc4RgAwB2x7+FB4EO/gBeGyMowJrid6yIiuOU1eXMIJlEudw057p9X069359
VOBwC7cPvZI8vSf4TAU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q3No/YDkVIy0FiweeVvn76i7Ri3EOYVbYAiHi2wWauttiokshnXqj8dkiKMFGvPocjMgQabi5r+y
aL7TsVpBMAiOxtVu1Mt6MAqN751M3k7qrb0Z0nLX3H/YHpXC7njMit3jmOHIafYANCF1YyMgR06C
lsmoPymvHm7N9d9Bj92VCkDOO0UYArO9YpQYzlUCe4iN6Bawbjge00kwpPm06b+LF85F+tlqlAxx
ntSor+XsBKxptIxSH+4BJafJ02+0JVXsdURVaycuWGCJsvUAbWNiRoPeN2woA3V/7ZIp551OSSJA
FHwaGLDcmtxipE0tjMmg/fMt8sEatgUs9amLcA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jnx7WBfdUta1DP+YRTT3fGRtjq857NO8Wcmmz63XNNB7mnqRUarhreRnndqogngF5poSxm+Fp9Qe
5/N64PQhcrXe7INbzX7GqJBCYQaDzLlx56Ezocscr/wB/94g1XHh5C7L+OaGsz73/C6nTrTx+qoO
vYXsLhOATbupH15I0QqrflKRn191h77YQ6O9D2LbiFJLiBIlQibYncy/VYCVBL3bZwpru4o+gy64
EClBbsC0+k/WEH0aCsQDlF37rB3VMvcwl0smwqdm6RZ2gzh2ohWxtz+8yh604ISRnvEqw+NQyZQf
QshGn3q1u43MADSpPe9C5Gl4T6pk+LZ/JSs3lw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S4JCYpvS357WfAEsQX/qUC4UZCr/A2YWWyJiXN9E8HjVpOdVBXoy9Yw4qqWt5SAZDrW3fpCiU6Xk
I3QWXZAsQv0gGfjq5c+nhZBf5SZ75y594X6JmZur+YdJk/D0QxsIXGWxZsRjfV5PXynYs9YZuxMc
PY5DzwXE9IIacOBWm31qWbCIhMpZwoDkmkU6+q8bWNbhSwGwr+XN9yy9KdFMwoQUPjQ7CL0HdF+o
DYz5SXrTzlc+1BZNT82zYZqGwxDcghaR33/vWKZMzqeR3ZpnIUUZBKJIroCkx+oEaeczxK5/DBcc
t7cgRzglxN2qg60fApXAf3SDcJ/+weCZKL1nGw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Vjtlu8KNjnlNuUIE5zPRhhb8tB0OK/vR9xaBOqOYDrP2jeqyxMSFwVjyddbpvhJa4cs7tpaKRfqn
s4JFJ7oeyKOadS9yc/j1irJpOQQ4riipe4vewDCIq71FwpXqXOnRlt26x0r5rH9Y5eNCMItZs5II
8VnEtl8vauM5POdGNhFUGryFciFJg/7/xFV29uZxlno+WssvhIerE0b6i4Yj6PdEVf4KX2tMA8l9
g+sUhj5pwuErpZh8WwZYeve4N9FuVSUYlMmxJgpjPBPRdHXOtONBerkAJMxrr/1DhwILKg0RB3sm
rGYB7e6AiN9fJHD89spJ4K1S4h200ROiEbpNug==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
G43T8ZCfcyBws9KaAojYCDvIQxBJSUDk3BWoc7oxKs/Bh7fzJ8yxhRl3C4UER8pby+YR52a1OhxH
Gpcoj3PHLWs8FpQkDOgIbp7KEdqdbJ/7IjPbOWyn+Mjgni7Jk9ZsKLq023EGhEwxyz8KR492uBhP
y2S7Pkb9myeTsa6kHt6qseaYyHJG4Tt6iwEaQSFLscOQwGw2eNnH3Bm6v4ZEqL0W0iIpBqYvpeiE
GJApSzBSZ30dACWN2sN0OuBC0/IXNmR+syVqSB+PO/GN1n1p9E+ltyzmOgWeWiqBwxJhstmViafi
01TSaGccEU1yzCSNTWINZ7UhLf+0zGvHXdPZRblwHA91uxGramDe4ElhhYOLpbY8aKN1Tvst37Lw
Ev1cq+WJTrArjWnNufDZAxwO0huX9sDiT19/v28kSfYeTzFRxcyjCSRSjUxhmYMR+EM8DNfpvWFu
V2tqwwoQ35phMEIidKsu81KHd6hjUph5Ii3jbgSuDXYqHydSoflU4FZT

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LTVGG4EqxAN35+EjEQ5dQgqkhUon8FKa6+oaA5F3/XQpOpJaz5NletAny4izGuEj/Rcko5Mb15Sv
55lokHX4MQDMfJEvj/xRT2uEHXNljDKmKN8zikxCTdy9H1PdStFfNS1CWujTtex7/zc9dxqgOd67
QcK7WbgKgh04q+osXEo4VG7R4xmwNDdiprgPhEOw+q0jLkLX9kdvNuzZ4KkdTBFHG2q2Ho4epXzg
wTRR/KDnf9ffxfSFCsxB49EOByzVzzdO2bud/VCR5VKw5dgQ3uTI6BTBEGKOe0igY+nZ2l6VtFv3
OL3+xEJUZheoPKRNA62H+2zw/prkdd2r+oBWOA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AgK/jT3DhbemC1ZxarkxVZUZPJU/6rQAuXztZ4dIRmOhJXECvoEtdQDP203KZzOzCPpd1Ee3dHfy
k8ZOSaZ2WCTKl2+V8kDQocNhayfpyAXkbfWfMxfeYunQP+uW1FqM06Ev2UW8leX7fEIeXtjR7Xxj
9JmETf2DOdkh//iy6qIT4gZIMuMMUpKdFfosja5LfAT/YCA2sULQI5VUxHhWHnCNYc/jwbBOnXqs
gkPPJuoR57Bg2h7GljhmJaaLdxdzl66OkqEh0iyiISq0/D4anUjWa8R/67pdjBNOHYgmknQkyVMw
ajhXpiDdu5HpOgW1MII2NCY3QOcDABmLZUt4PQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BT2UBIApsFkTbgmv99cSD8Dhltus4JsCK0EDaasxUbh2qSIgh6Vp9pwtBhs6I1QpQlNLF+IxfGXp
Pux7Yi3TqkTkC/JUWbmnNHc0+ES6zhX1cFJVP4+x6opolOOh4LXCyzsk8jM8ZlqKuNZmT+XlIknM
8l0DU+WCcrnXIEkapx5/d+L2BqhltvMrs3txl7HMznuJp6YwRz6krTbOamW8/UYtaWppt5MRg/zv
dUmKRZqVIjTitBoFA1BTQ3VvIJESqsZX0qgIUamIsl+Pbl0yKmbTrQ6FC+LMhFJN0fHyEhSzU1RJ
R1fg1Ioy6QGFMuEKM1tL6U9KhpcpKSQ6hyM/dw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6992)
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
