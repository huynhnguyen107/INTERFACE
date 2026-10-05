// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct  4 12:13:02 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_8679_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_8679_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_8679_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN udp_parser_in_pl_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ILTit3mdPxNKb3OjrAeQJP1LWdzT3s7DbTf68ytINBEddLJVKIsmFqgw6uGCMplsf/g8mh8FzgyL
594LEhWtoswc7Du0GbMRdkJ3fDUaAuROaICnh+f3GjowhlJ/qARndg3c6MnAqvWmim5SMrA4CQGu
+zKPLpYg+fGKa50D+u6EKj8o3jAiT2AYKUHNEdFASQuU/SxnR7ZS7UvM801+yd2tGeIVmv1w9fSA
3ZDbzi4cQGXJ+uaM0tuZ+azRrBXDTfQo2OQlruiyJXoZEi4YPOHImmjohDcs4OqtHlc/lFCNpT/4
t0P+depRezI/tH13tJ3Q5qB6laNqcAxUMKZFCA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
npBJssmXnyDh/J/tqYyzurTlIS2qgB5zINrXcr19VTu13NdFt0wJSGNgooABgk/AGD969ptyOTE6
tBANOKNLPUEyu2WWn1IXQ9r57Xcv83sBm/K4HOTqcJwLfpkvEzhPg1674res12Vl8Gsdxrqpylom
Jujv9mjSvOnRcz/mUCBGNrOMDbC0iOUn2JYuSFQFmV3W3O2JSpzNCY97Mj0LSZ9i143JmhcWo9Hj
cKmL1T3g/Pf0YNdzyspdFMuCJSJKnIrnd+QlK9UyZFDgvjcvoDSJaq9ISe4dR13zavChKRqLEnk0
YoPEr0gDU/Acuf5c0ngKSb8CLG5imPT4uSrWAw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14048)
`pragma protect data_block
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
UUTsiNqSPzLmSKxiIXmOeVYX59yKzPdO/Ec=
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
