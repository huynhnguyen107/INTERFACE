// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct  4 12:12:58 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_8679_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_8679_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_8679_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
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
OCUOBhkNVAnX3euJY+ni0IYcmp9zK1t+1wc13THZaQf5fbmEU99ZbWfuOMtZTYAkpfbHPJLHEWWM
0Ae971tgGXAChLj3cB0MoLU+ycztRpZmhK+a8x2LMgcU0hLkQIINZ5v5ekvmlbHmM4MpyOX+o15I
kMDSmkXFjuCD2Zbjw2QOqB0hhdFwS1mUIo2libtDbyKuepQPlrZGqIbHv8+sWdZBAjUYsnGzNdeG
bHI+oy5uVmQxhuMfppYYGeWU0Fqd4nzC6UfpE7mjMnClggJn3s15Mu+3RaxPE3wB6NMbqYOuqoj4
TZMJUi31zsNtVBjs6wV1vk4SMbIRUR79IgI9xw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DuBf0oTT0IRB0TCrRw1T9MBZ0ZijtMVQijOmdljv+7uicHiNpxMurHWduRUAafW0ra0NUWLalNgy
yDqZ7wd8clICQvBD4KbEzxvoRhZZheA2QLCf0gT1/cf8BTFRKNoWotnwgsg/m9DkrDG2z6C1izBi
x7fuLNSc0QS8BqSLliur3zSWglmPp5o2wsCD6Y7aK+G2tqX8ZllnhBeczqo5K551p6DZ+1XHp9JN
0LzSu4swGw6+jpjSsrkzdu/2KjuhhRfaotLrIbaBPgoTFt04BXwPAjSfDen3zTjTmqZDn/LdHMxe
dl+g1fy8pfWyutRtddJgKxUEmaILQ8nH9+ESgw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6912)
`pragma protect data_block
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
tqqos1LCIwo2YR3rsLJg
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
