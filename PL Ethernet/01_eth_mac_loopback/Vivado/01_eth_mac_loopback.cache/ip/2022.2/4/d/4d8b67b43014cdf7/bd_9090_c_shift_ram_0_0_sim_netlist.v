// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Oct  2 12:10:49 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_9090_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_9090_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_9090_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN eth_mac_loopback_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
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
gql5LWkLIl0Cjw7qxxBplFjTUPrhI/Sy8imssuzPszD3kZqD1mt6/3eZud4+fdNCVjNxgHD2PDwi
5BbUrd38TXZMJFQCmywyZ6yQ/p613OQ6k5e2Ib4b2VTtBnY6yN0qyhGtGcwM5+3Ey/O6vOIOvWs/
MdbQBSOadSFnhjqfIIqqeJbvCnkPIWonD2wvPwQ8TaIfHI1xEQQX/X6St869TXi4hnWwWNE0SEDv
raEKIuAc88AMJwq2/O1HpWRIIraeRU4oytFDBcvfukOCAeqTfnrs76eZ1TCFUjMlwV4NbdDAeD5h
zyItiN9Q8pECaz7HJKN8vJ9HqF4Y6OkYbcdZzQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pA7VFX/XKQRWehm15vz3Vtcnih4g5MGNkMkAv2Db+0+/AhiPyw75+WhTTbxDzDlkC12VIKct/ixf
YuG49lAAZB7FPHzBSt+tOoEjoqyGHDbg0gdLquA+Vpqrb4RO7c9Z8kqNppf7J95j+mAcVkXbp1Ip
u5181thGP8tMMyr2xexUlD8bGThIW8r35HISenx2m9t4Joun0ZU7OP8yyWCpxQWe3StU8+8eq48J
Fh9/KOwFDMCJLBEqiDOITaokVr47CI1xMNt+ZntjGy52Ll6rFG0EYGg9mMB+DvdN3k/of/BbQVTF
CHsXmclN2I8f0OKNmjHab85mj0qC2NGtivqUWw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6912)
`pragma protect data_block
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
zsQAiSInXDHclK7PO62m
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
