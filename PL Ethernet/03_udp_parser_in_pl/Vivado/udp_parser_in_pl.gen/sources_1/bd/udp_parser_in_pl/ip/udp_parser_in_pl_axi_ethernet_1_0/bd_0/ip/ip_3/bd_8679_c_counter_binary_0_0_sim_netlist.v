// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct  4 12:13:04 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/FPGA/Vivaldo Project/INTERFACE/PL
//               Ethernet/03_udp_parser_in_pl/Vivado/udp_parser_in_pl.gen/sources_1/bd/udp_parser_in_pl/ip/udp_parser_in_pl_axi_ethernet_1_0/bd_0/ip/ip_3/bd_8679_c_counter_binary_0_0_sim_netlist.v}
// Design      : bd_8679_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_8679_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_8679_c_counter_binary_0_0
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
  bd_8679_c_counter_binary_0_0_c_counter_binary_v12_0_15 U0
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
o6plffB+gDy/fc/jOOsh5cBHQj+NBlLR31Xv1kkZoTiUh95xgXq5niD3YdW/VwTyXXMIJDSRRGIO
SjBzW+WRZ9LAClmWffkGzrp2LDEJE27H47DRYm/DVOUs4tJ5HApra0VMiqRbyvzIwf7tE1xcxx5H
KkyqjOyzr/D7Q/pGlYi1R25oKqVUgoidBTuMJyCh5iwg2veBUit4kYOVJoBDD7OVNocauT+TI7w7
cMb4LN4vfYWE/6pzjC66e+g6KhW++2q/1/4THwefpdZn2Ed8qR8TUIfVlkidZnV/ettJMJ0Q/OAl
tWw6fvLD5ixo3Tk8u8rdf42x2yPa5to45DDpsQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vHMkeLnsThrv68kX4xl/upcWLcJhclxR7US186NQq2f6ABULysFSdHRueilaDM2fOHeRmfxjlItl
711ksFbw8eLqsva8VueqDdkOleDb8aBAnzmQvRILYfnnkPMdybORJEoxIukUDWLs77MIFx7E2o3z
NrYH+g0mYA8hzJORMbUTs7mqcSNE+C0hZXdGZo/HhjYUARdeao3fYpNsvcJWM32m1ejCOSnzvT07
dmV8zlLmPNo4/h7MWPXNxS1nsu7yy/5nFld3nGytN0+nufGPYKlaCrtwxQHE8jFMIxWRKvvvJNuI
UUaOVlwRgpsZ0WvsxgypQPicT6RcRgELF4pX4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14240)
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
