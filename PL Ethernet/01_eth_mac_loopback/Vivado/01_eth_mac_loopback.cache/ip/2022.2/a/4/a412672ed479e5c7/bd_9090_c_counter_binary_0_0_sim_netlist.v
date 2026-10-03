// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Oct  2 12:29:45 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_9090_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_9090_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_9090_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN eth_mac_loopback_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
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
Mb+pFM17uX/b7DuBINeZkUbF0uhMTqoi3G33SKRNX3rK9U5oHBY94zIuZFCsmfEs5uAltFk5C0eJ
uwZFC0efNrvaTT0GMie+h7KhHVmnqOoc+SiSLAhOYslK4mPOpiLqlgpFtnv8k1vraAWQd5d5C4Yf
VrwbV72M5ps7AWlCkkuzGeTq0ViIxl1q/Kx0rb5wXl6X9T8u2KyMa1T4a10dAa6fiq4XI8yEtSBD
gDmjjby5tW79aBhoMs6RQvvQSIr7jycthVMXMat9jHF/k76a1peSWxsRiFFI3veCcrSzl7wC01on
Mrv7JGUTyhx3nJhkiT8nfmuyhBO9F12DfSwDpw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
df3k/WT2yiUhpcOjhyk67gkYZod55ocghbIv5KDj0DMcz0e92NmycYSYRKmLZGIiAi8IxGNpQLXp
2WqiXhuk/5HK6dNTrgo9UOxh7YZoHbTGARZUJqXFBQPdgSV4MH51H2wAQjv+sUipXE4mUhCbA/Xc
UkND38nVEVeK6Ax/B78maLOUvA/xVMHSx0vgDn48Q3d2nxzrpbIuRY1cwf04qiiiIE+eH5LJ3XUl
Wg4juYcTMbGIT1pYUKiQTkyfd82UemhjmJl+cWvS62JbL0PI25WynP9Jxcz7u5OUohLg7kPbEZH2
fDVtWiybFg6VxhaQAnMxnUH7+21pZ3Xv5s8xHQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14048)
`pragma protect data_block
6QbSNelwouytJx5IA3yJfmO+V31rp7ZMd7eh1S9UVWAeKFnhzZsoyVJTa4dCk3UdtDBvlA3SmcnO
Grlo4on7UHzcEEAqNU7h5/EbG0AOMktYo5RKiziVbVw6s6iFo15s6qX0ps3462ZZgahHJ/NJONaL
cef3UsDsMoFDZaNm899erHFEWmVqr7DmuYaTTK4SQ8trRzgsP0U9xlsbN3XAckmTJEsTUm5eL6DJ
BKzB+BzEyTjQ4RuM3SJ710ZO4yPKqY24xgokUAZLGSrqrJTwXnwUjdGItd8X9Hhmv0NYyUIAUCrP
L6QoE2A0w2hU63rGFPuwr0PnoURIndipiW4xnD9UaZUj4zdCBWuPD+5M1gPoMuYIb8tA436sJVcT
BcPOPv3wylOdXWXJ5LaD8uixMLBBJ1b0QI07zr9TSyzkWCLAiGHkiTx/bHIlrI0I9EtmwpA1A/90
hse6W2TxS5jYwLWhDttFhdBYnkhwUpQzZPP8vTHkry+zGnsHIhQPupCNrIlK8F5XGcs/q00to1gF
OzSKXcX9BpwjTAKeGKdQShPAYzu+iL4KS+3iKHzKOGVyzlNpg8mUeHPx+yBWNoK1jMYRHYMNGJaV
ujLmcX9ePxQXTJoR4AP0Eq4INoKlKngttPQZBqQz4pDOl1iuKI1DQ8ctuH7asUkymQJvGaz0eo25
WZpGXgoHHIG1+z/E25STg5QvkrXaI642IOj7emZSmum3WFaBhm8Y/CYogHhib6lnMag8E2yd9OJr
2e7T979rr24akGW6IyefO7YXVEwO6xFhESetFkXrOyeesdKo10qk/+oXh2+loMjZcytdND2FmK1J
ovkMQTkN0HbnOqaKjH58D19XQ++fDCz8G6ZDMbWQFXOQYHdBFHO1f8+SGYN1qdC8oHuEDkknEqGK
TyLMzcgPUJS4vpRj2f0D+wJu86AW0fdHCdwdiNPbOfKHOqQWgR37KJgrTD3mE59Ih9/kEiwctzRu
7e7+OcKMfPhgXs4SIRTzYSa36Ti5FTXeuzb2K637poTh9EJezDGSGvugcOMpcbPx679k5JmSHCZV
q2fgBFat3MYdaMemt4nticNBA3KtjHsRnEPkUjbOh30ZMi8rxBKTacK1QMvoBgxf0iX7BZ3r5jrG
7qO6E7SV8TpAY2tMIqvlXcndZ6nzCe3tQs5mheSikLJY23AvbN7diawmbWL2HEVTeW+9f7TQ7XAc
nUBS4OX/xC7dUn90eo+tdZiWHczJB9tMhSGfw+2UXHdipHoMx5bW+YR+BD2KQmo3hMQ7XLYStCUK
4JedpYtbgJa1PVx7nVwEOGaStXjQ6vKvZmJdBIP2IiI6X+iRRH/PEt38Tphl2Df4p0KWYWbE75f3
W8GOqrSsBtSdjejCzx0PEveJPkdZ+h+hxQMpl7/0dv0R/J6aE0lTTKLbp7EjsQwQ1y7ae31Wv7BS
CYknlF7WFDPe6h5zwSunRdXY+wAMlEA2SyY5RC/rdgzD/SNDrxCjj203We+Ue4UtQWy1+wFvy5gk
RTYUf+q4KWE5PesM/92viuY1Z9THl+Lt4U/fZgjkjorPdGv1yQPAZaH2dl2Pm/m74Ko3/UGNXA8+
wCc7AfjsW3B+yH+K+JPaB0RtwfdFZz1c/4sx/e/jfu1EsecimWqU5H6xnBtdkMfy9D9h0oljpdbQ
EIS3MQf9pxVP5lFKLeMLS6VhllgXMkxtogqpKZUV1stoRAYZCZJ628LVLsthTLCd1pMo/2PafUFd
m9QnQgSXonn5CKQIrtwSzOqfHwVWAr9VgoIBlqEVLA1UzwS9/f/EdZKGPonymvCRfTWb8OxU4ik9
Uk6U0ZViKDvAoFBjFZqlDRKQNg8Oe1e9L1d7Ky2ulbHba6/zTH66o4IsNXnujcXRYgE2DTU4nyfM
iJdG3e0+kP9uaeavxtZt4Tumr2EbkGB4j0HOESrF6m4dlKt3KaiKbF1Rr73wB21kGv4jBvcUC/nr
z8T+8RsGUiah7HDENEs6kQkwrTqjyq+hpAp0YBr7f9CcLOenhLjlOIV7jByNEx2h6hFNOInrWEfP
jMlB1tkuMI5sngBU2j4Rpqk4jEjozExlyo3pnsAjc2/fXCMKyZb8nGq4LwUl871J9AlBw/A3/a2l
eS8Ktn7091j7ZBFe0JNU/Pydsyl6uGUSfUDuSs8tvo8hliZsu2eksD8eeZE4TFjreDiUQmj5fl2n
cqLL5VcaIUybd7mUb875wKGBcNxh1KhLmbjULh9ObtvuwhuHi/hUTU0BeLlGjc45eTWdTTbjQF1A
PAHXFD6twkwlpkDi9IFO/xdBWY5O9fSXICwdAzl8Z2dqgckaiLk/pKYCekRKM3snYagws7p0m2jg
L0GSFWDh06zh7EohIq0IS49oaMtMLrUkDKoPNpwH4gvbDFL7UGM/nl9CbwXZFkTl6tMcekdakeai
imolX1TJikQpsHWkeaMfyzBce0Ltq8HTAbkgmNEFgq11TYxCg85UuErbxwF/q+AfgK4FtxfOd8zW
0bm5riPi9ik9fACGmvn0c7p8spH0kSdC32Qi07TxQalKw6mc6sTneuYwtPc8I1lA/UNFmDY7mGv0
LrYg3tacgLzE7YmbvApcVYCC0YCUen87JW4eI1RXWTYv+yOkf1ej3sYWoUHy9MtsH+q/sTWyE7KE
0DuyeV2mc0uFYXQlqPaDPGk1PGDA37AQEZuy+EBZjXTdSvKx7mahaNPV9rrnQScuPUaFOcV2DJwf
sRIU9jv6VIL/lQNkw1iug9LGuOOhB5tLuuocqYpay1IDeOapU6K2priQI9WFtWicC/bZBwzACxNh
RRTZ3pPfgRbFpSdt+2TMz4J0YrvI9ZdemzayvzccQfhHL7u1qiaNKqXpmXCMqEpFXhE8GQ0empNy
ZF94aQkJ6NCizQaRgVwkAno8IggLYsu70MBjZwG3PPCMDY9o1SEQOo4yKXY+7aqNxQJJSV+4HMxz
NR5fm23My2QJ4WU1MdBUotG12Q9IQ021WISn48A8awb4a7ALZ+40ONUnsB/kvT8TfGBw2rvAMAxy
xvOQuuX+4uvQ/r/mpmg1lA71YglmzQ1Am3OHjDHlz9GywRmsnlMZxQ0w4msg8RWhjTCcH5dyVz7l
v1JsQKNHJ3F+d6WaIyjs8qhBHWRgNeAPNlXgrxCYejE6p9uodpnt7YYEI92yYQZzon3DCm4S26h5
3DiWLj0KPUUDdJznR5BJCl+aWr0PPaqbxBBV5jW081FMUgkUAXWozhWJLA8YxirdsO4QrBFQ5ABg
mxGWpmP7QH8T+o7X2JkM58chNuTjkIFrZ0epr85uGDJ31GdcqrswyhSQ2G6peusAvC01vwnvE6Zv
Wtgztj/Yyc+R/LGJAYz3Qt1EZbLNnYmcKSXG2YLCjWeVXg4b7xjPpYE97me3+C5HUALyePUvC4or
jKcjM663Xk0nPeSiJy29aqE14G6TpK1oG+TGo5K9W0o9zKuMbMarC91OZttweQabzO5XFwM7UfCh
JGhQfL8AFsjlesc8hwt7XyziAX26Uu8h89NaVeTvpO2OehQM3EavQji8uiPZAMD+AhVgJghji0PU
biHJDrpNefPBWiu29YfDeQsSRLZR9DnskI/4Ic64bQexZlshRwe4Aty0mwF4/uRep7jakgW2Um1m
8LLLPzJj/pRUW0HKyGr1yroe1IQS4vVE0+Tz4sgfuCQ01lhnhQc8mZSc6LfBhW2vj9UYDFarXZ+D
DiS69RN3ct75yK2ghf3HEl86gmD4UZr7iqVwWqWqNFFLfNOoc4xX3+42dZLLUDho0UdcGW8GEKUA
D6BCv35LCGIEGvHIQvjwY4CRGpq7Y138TDECf4XyiS8eMNCtuGcLftIwVwmvX3S45l3czh34Eq+w
nQ6p8qxeSrK+Zx8/hTLdXe16ufqZvXoo8W/dpa9LgW7ywJ3OgRSJh7Jv94pJevM9okdeLSjM4OrH
S3XUeiGNGJvhShxOhmsdhsh0BOqm1XouMp+NFcK8iRtTv6GCWFFTs6Qt9vFAbdQtT2DdTcUs/2ba
4XOGoscw211ZgMzNZGdySdu5TWn4zUuNMgcAXxdWlZ/viHLURrW/0PIsJmn8Dm5MNfZG3VU73mJQ
s3CBrwtA8wxObZnR7oLOm/Yx5L4NJZYjxN2JWdChzZbw3tZOTIQAWVhrDNln/de+dDaIQcpqPo9i
YrNfiFoKYdtEjyetq1Wink+PiEJUOC1POSfB31AbDxeX6FOq2MeHE0MQJoizzP8hHQp6wA1T02lm
RJ2dGyGYq1apkhqh2qsQXykxI/S822mTItDTbtmCS6+PfcYAIXDfb+1B+eF5LxCAReEiY4PrYnXU
t7uW00UxyeysOSlJwwIl19D5E53+sMJ7aMvevU7h9ptsneRPbR2iWgob2xoFGKUyWc+iSzAJeI/q
doHU+yGoswNKzZhzYBz0msHpIhmszfK34/stMBH/7Ki9tMcB7Q9wD2Gu25DoS0W1jNnVVvFVG3hc
tjOE74JYmOxwe8EQPVTP25WduS23sGkC4eu1WRqrsqKHdPUlH2RBXUWucOE+ky2F9L59LkEwa0pm
MoHG5HlLjq+I8IoqV6wZ8fX+HIdWYWx1ch1HUUI9qDU9Xqx3gi++Y73pe5JrZHvodex9nGMh2Ecv
NbhwgTVGr8V3Lpz/BtNzkjF0ZDFINkhDOnwObfMWgConx0Xc2y8DHexYCcIb6AYQZbu43f7yvFqS
XKaW1M2Ninp2fVo5CYndB3jJk8NKp10TP3TePWuPV0Yg/fDo2GthuFzzfC16Q70NcuSQJFYJ31ZW
AEvrxhypK0Icg13alnNcl004emRiunaa2nY8SI7Il0vAcADFEw/Ov9pLcvC8T0zzOMErpoNhr2CX
Mfbb9lAt3d9v6Vg6iu7JgQ+dS7IBmPGYLAK0UEy9X3qbaDMu5bCIPG7Gj+J5JA9POfe3+qVLGOl6
Xb6pl+ugzQn4lujF89Ta2+sPr7vumV+0wYfrH3smY9h35weQ055QlC2QVx9CyB5Lpo/EpozzDW0i
kZ9w9ADq11FxQQi/SAUZRMGRRDX590YWYazz1zOdI4DiwfENIPaci9r9ZiVE7wXBKy/phI5ackAI
llIxq3POussZcjVxGui4InxLM3++0TO0Dd+Z4cU1n1toPIAXUtntQcebQinuSNYJbdRwZ3yIOLbD
3T0EGCqy1KuYuEx/CYtIbnwW1XzuM42IYTA4+nnXfF08RhlrTkaLNVIpTLoEQpftTgex+7lgBmhc
X42Vx+ZeLVGum0jmOsUi9xQfLcvbM8DDhaS+IZhwSCYKF2BnLajLlSuMCbumVq6fv9OtlDp4V7Uy
388nIHwD52KzmkJJpV2HokcuyOhzntlSSl7pctDzvNOyVDiptYh43bmwygac11STqW7nOho1v4qE
O4ikK7dQao7zuvRTXleAzPS0HUC1i2S/mE340bWNY/NyyqgQQp4Iqs+rGjVmurwAQrh91QJUksUq
ScO5rzmbLhks8faBYF2DXX19KNrrDrAAF+JIa+dzgA8fpHoyZpSa3SOwePY5c/dNrW+U4ow0NXog
fMxmiqCBDGlc8MBqz2ZC7kQOrAhJzHNkzmnyU/ERpIGJZJZCTqQs6Ljpx5zjPrLIrpAMgK+y3Itf
ZUAwin5nM8TFUpv1ZbeyCcS1yDcLBUwAMWVA6b291mt6Lr1XJ/yAwM2z68EmeWksRpp1gC8VSsJK
JTSx5qJOoqLtrl5tfIoHOEzd93nY9f53RTXQ6dSH2RZUAxTACtIV8epBTmmaSoGPDGnJWEtRkrvi
bZwAZ/Rv0AO4Fy8QkWv2gS2ZEJO+TkqRM2QSko1wEjJ20iLqPOiJeNh6TLg1rVgNZMV0nm+ofzki
oADwflFGF1Jsa2d/HfFz1L13yWliRyoRUzryocdXJyjaUQ6bKNAJVq3LyNPA9CbXM5T5isgXdSGO
eepImFzdj0MxC7fhfxp+KQRuU8YIdp7h8mJ19crvbslmATBhHgxANQi+DAcNUR9TsOLQRP0SNmkO
iqLX/EE3L2VmchoWtQsB4tcvYUc7v/DN+tqPbTzr3cN3LYbaD5qY4b/fBzzC1fsiEuGjj8yyecKf
ZgyuTXEWn2I5Oc4Q9lPA0gl8nARpIZp0XOntj97E+iKVZb4xICBRPZRGSSfLJDnwHVaFhGH91+vQ
0Ed3KKaDPm1jYzc0DQaaP5uHBXYWP+ceGrcjpCUyZM+rQAeGT2I3t5harzbuiYqVQj5XDxi0J6y4
j5hYsZyCq/e6GzyD3kOzw/3aIf7xxeMuXr1xaVgp+djzFDqCzdQFIEbC6405esJ6by2GB8n8oyzf
aL3aZC8nUTTMgdMvp6/l9p6EDM+Qfy3gwfsc33Js082mn+2YgyRhx+5jFwV0lktba6Y6RcP7D8kq
Gzw10EMV39wUzfPUIpRCFhbQ97WoDl3lnqzcU1oNBo29rO18/fEw8ZCkllTQ+fj5L63okKrhNQkp
mbwIgDzAwL7diItPx7D2pdXRlkAuB/6Ct2J6vD56UXG5N4ZJqyNSIiEwTmZpQOE1OqhNgYIY+CpI
xwDs0qQTHuBv5/zEcVKi57oSZMm2JOww7XN7/RyORyhbFl74ToJMm+t4gns/QZdytJ0q4MgDoEcx
G2sgfxrBKeUhgV/s5Xv8Xr1vZB4/ubHD2T5oFLzV46hJRNXJ1Buxf8ny0kivjuUA2M6UcJ89aG5g
Ipcm5C/IXJxKVSsES9iZMa7xqMVYqE9xUwbm6Thdo5NRHuqRU1jvt1ivZOdEjfp9aXMTbJZ9lnzd
8b9EzeZqYu/xgNsC/zyUhJJaR8nhEHQonr996XHA6SvGeKL8U/1Ti/qQwsYt2NfHoC0NTmJHlhFZ
ogovbEMDOOqzSmwW1ePpIUw83bHOist59FyCeaqVMTIs0BoTLXk93pZjLbFIKK1nrFB49SFMS6Ct
JCp9TvrydFIsmVI9kRsXoENlwbG2GPI/VC4NoMsG411oTQGPUVyWyq52lAW0McCoIje+pFvAq+Ni
dDkKTkpvrIdK7fzA6woeONhJvbHKy6L4vIJEHMVDHaQLyF2PGoBjdxdMilLPRnoz+vSlJDeueN/M
khlepZwy/eX9I2zHK1cGu3qn5KhlbghJyRyJx8NfqdPQxeOqsUr7N7e476OC7yKjLoRjVxF7hzkx
jUZNlmPCplyo6e2Cy5lhX6+2kk0wv8vN96eioutnlrXh7c4G0Y7KSjk5JL/0+TTkjdlCJ4+un4iE
DJ0+MPFK+Y4CLwVL+ZKz6V8aeXvyDzWdUkasSJdFKRLmlJqXMlbsrEYAHupbNDZGp3w3k1POqZKN
bQlnmoa+iM0JIHq4y8CozSpAZNh5N3hgsobblw9XtwVyawGWNV1Hm2VA7sTyEnubLqBJZtogxRTl
O83c48Ctir7F23sLfdTkINm0uRoXEdBlmJdCUbVrUf81y/c2WPG/KNrg4oKz/VdyJRvgf+T3zNr7
6eZHtFzUtNuE1dxXp859FZYj+7R3R5svXyGKonfVnFLgaD+h2zMMEvZvDNOg9Dg9WhzuVI/lQ6YV
GNup+qebqzgNjgGuj3Tg1EQ7F0FcOyxnw9qFwhYIVGEHMQQZtZ5Fb1aQbnw1IB1+gMQmxRODCAsg
2T/+/Oj0s19EznhQDhxecnF3yCfREwDtUCqGj72j1oilNj7fqcSLq4NCvz+2jhdJhRSjcxD4Lvjc
ZqPmW0bf6Ydwb4/DXGxMHFo2Hlw79jGANsxSNtnTafRmXDqOGy/CLGRe/B354VRmSHueV6FdhVXG
3lFHR8i/Zw0Kv6mii8AtSssS7VTGHNJKm7/SQ+0BghLhugGnyeGA/AUGPbaCdYwKO/1FmVXsT3jB
EEd/FTSJ1eCQlX1v6PPCttBJwSnVrgpWGCJjb95rB8cqSyGCtV5h90MMg7Qa+22/ulb0WodZlrCD
1swV7VLJxuUCGKQd79WxIRiF1MOAzizcGhw2ZPKqxgc0BKRlhCGFKK3PLSmn/tBUO7QTJJcqgOit
H05WzHXMAtqJ4TQ0yd6JsVjVk9VruR/xz1V9zTLv0ZMUpUVLEVvmJwPbp90FL8Rtu+zr+YRehM1t
B4VZm0XAdV0aX/0QaNHVchUIaDtmLqKKQniiQGWZN/yxi1qtGGH4Q6C+ZJ5+6MRTm4L+Up+T5hQ4
hT1e1VEMbwo40oYRewZGY/x9NOH6X5egeLipySWijBb81EL4VdPlPP/vIXllppZlT1Fqa++yFtyV
LJTxBU+cvQyX1F9pK4MS8lwUKscSYUDCYh7mXkOAUUccopjC3y/J5SoFjAvAKtEfXcfUY0B6nEpM
bBK9gwn5sbo6ErVgC2VN70gxh0ljscbnx+LDkRwTUGiYA8EQyEH2xPFJjHQZYmQRwJ7PPg+OKc6U
iVwcA7nhFl+pq04X9wl5n7TcBlY7AirCIcUgvjAr8rcqRJfNsOIq73TUnjqX126ms/wX9jvXY6+k
5N3mveQQl3lLqqtqosVGmXKCx7Fwj7I7n74c3RI7LODGaT0x2I0TVJdXCjwP9riaj11ExO2WYZN2
jTaIryFXOCfNud15q+LBtZX/DEXNAh5TWLa56cOHBs5XO5j06L4MvddSVKaVyBxYgxtcqcJKEkd+
fqJaH2kdFwcMPR2vbuQs9DxsTD0S4Kx1OIhJKfq3ZkyTyQdjAKZn+1hcsvUPEb56YRBhR7uJ0MZu
T9JQYv8QjF0Sdo3hWpzBu4tcON1hSbkFYGCAseWxW6yllKES5LX1BGq0+RNpPl3Z25EXbwymUdnB
THLUVvnWfGTt0LSlXowzivjx07CzPT9F6LUYkKSzz+sb6QD3RDWvqz9vMXB9Yu6PZf/3RBI+hPc/
y8jf5xsV4H0MCx6kAm133pwXALcWlzgJ8xNUWWiCQkg3Sfv9o1Ap8jJm2GL4a9NgHS41ceR6WwPj
lDjRyHop1tfSXUCSOuQs1aBr8CsuFnIGXNDV3doE0ZriSjFk/J4jmJJ5kjmKj0q2cMD2dNLcMkyu
xGcCUjy9bCSlo7kXvAe9C7UDI1AA+IPnOidMvCN7ethXPrEmAPj5VnrCLQe/fZDucmYd7JSdbbWp
k/X+O9ojHzKRrXSxdZq0TuzyogJLVqNY5RQGAez2CRg3c1PLMjq2qH9qDWGrqDVBdrnfwVbK2IO1
6EUuv0ouTDWD1qOWVq6Hs4Sf1SJA1K37DRSh5sifiqahk5M76JkVKahkdzxoZrjGJAEFlcT5Mt8K
a2Gkb05Ryd8Q/xSmmGGA1pVtm+OoyZBHm0g11TMkBHEyMsuAYXtbaGsC/sS7xtMEjO4pyb2GMX65
9RK5Qy3kuhY4CcRlVaR5XNTI9IFA817FyV2YPoWgXuQGhYqxCrgWtWaoinrX93HDcAmULOiht/t4
dRTmqwnGVE65KYCpKbrKajg9NY/Fi07Xh3izOdu5XWY8IHM55nHQBEE9bKTEwaIM4VRj7NWeJVZb
0a4MWvZfexsTEhTJ09e9hEuHs47ZtESfgk5BZPpzK5Chp6NJ+kJkUuDl5KS0AQwpRYCa6X0f15UA
BN3MtFFWguQ+nV4jnFsRBYCQqmLqWUlDSmglxDGLKpN0TuphfaCMNttwcd7fsguZeEcAVNa4Ji4N
/KjepI9CCSmebjmBRpPLVDyx2/jHvNMJThVVoI6hgeWsYgRvyLSrKiLWgMTGQhqA2T4141qqens+
GkVyxqLwAYDm/ctzEq42uAxdL8oSdLbXDdrOOWpQem5BmtP7JGSvnRlV85OPJAUPEn2PO8Tlv3SO
LwOaArpvmAyW2A3yNhI/lGVG5o0wgcVjlpiTOmNyUsKsUhyY59K9ezd3depGC2NdvF7l054e4b/c
H2HipBwDCs6q5eYBTpoH9V2AqRapDJs6vT6ob3+DV+3ulKsWfYeuOy9uIo1tva6nzNY93UFJ4H+s
SR78hdXiOLClAr0Q7jACVXQpMcFUUeuyPHG8j7hPP7byvJXHmIaT4J22gKtuSsVgdeJgpCZ+GfuG
c6K6FuWXQZLxwwURn01UtJxGWzoRcJ3YeqFxQw0tN1CsHA7girMS7g2SGZKAgq0Z0C1aRfT++u0Y
IurNUZKJX8KWISab7+Oyc3Kw7+xA1Njv4XrCK2qgMKRRQIVo3KyqRkWurkpJRZhOO5nyk6jRDuLj
jmTU25zlGLYOByCwCpAZXa3/xjiRXYrELeBpgpLuOhk+g0F1V61LGHBZe99AI8gFVb7DTYTFjCfR
5i8mP8Wwtb02iwWvGhzIScZA4Jaa4vGSt5bXicMLhSsJFXARnmOxEQKJaPNaJ+0mFwoV7/93pbPs
/7ptV03RSA1WCpSPfUVhQnWIOzxP3xLW1fCTQMgackyFq3LSoii7BkAmLrr4kWKSl9EJg5Av+fDB
i2HsESqdr29ioI06l1aUsNKHyvUi9BoMk9bxk97yjnnwRtISfZG9ONv7yU0GV9mfMjInjKrkUWq3
IqqRnAZT34idI1lP7vvHkseXFJBbwK6Ti7reYFkpcZ3zetGIAMsTlIjH37CCNDqzIVBV2ZRRMkOz
rc0+jUdFOjPsA6BDc3eaf3jlzPVivVhyEXzapxABaKj+4t3KKyLd0UqykobPTXs7a/wMNco+Wepn
qdIgeEmfjGevwhFsaOhvVu9aTmGYvDxRhoyCtjNnGQS51GEk8PV9Wox0mPamUWwYaCy5VNhizQch
zBj98jzZ3UwAbdePHRX4WxjHjFUyRebAm/r2lcai8ONYkugusnP8Oct5rHZiZhd9pBcVGnwp4OQs
PLwXva8azZ4Z2RYkbBAnEpURIPstw1BSIx6iYa4M2ex7s0LZZjndfM5pPlISJqVOIzb/2dV5b44s
A8rJYJf824Q3CG4dAmTSSgs+mM//Cxs0VF5F/yk53Awj8SR1yUtijd4IdEEFmoGwvvlMpSPqgj8d
ERCKSqF4CAIfIMLinQzo5wF9dEsbLhiHmE7CJe3LrVyr5FueO/ReGJLfXYH8Vd9mWTkHsmG4Y9/t
jCUyMPwd9NC8fut/PQdGOnaTlLa0g/iFxysXLongOy+Hgn8XiWOvv3MFPsRZv7XcxcdOTZzuLfO6
Lhi/dh+ZNpBc6A/HslMc5LPjgBdZij9YkJbk1YorOLPrg3+UulPxFFiMrwH/xomKsgUXWgsFoXto
JLXJ73I4uE3PAWPDH1rAO0pMjLS556D1HU15Er0d/1Lw6mCheH/RtyBx3X80y2j4XIuViiER+X1h
Wa/L6QC+6ckxq4EdGi+TOj4zq2U/LCNqguegvs16kqwvXtgJQvgh0eiiNA0nlg68+8CC0TVJI+7/
oT7PRfT2pAHK/3fGHMgQSsngRJoEQkelBomfnYBAXI+MmpbIoM1/Keefp7q9n7ETOWbL479LFknu
lJyFoO2WmsI3dY8QYQ+OZDJSVCWHZg40/eDvDQGAAJfvvRjUV1ANzBv9lU4fhIXyKlZabOb4QErl
60J2J2T8NgjFraQphZks00oe8DaauwsxbIbdMZ3WNq7Krm8QBEHc2b+jyvy8PTN9rCW2aIt0PQ8j
pAf2zmYKdzGsPsZBaFOmUkT4JJZBp0ZHFjs7CkK0NW8G1Elc9MOMYibbX1OaeLfezWcjhHoYhmWH
FUyymsKM7O1ySbTpOdQOr7VZTfI0f3ecQSkNetgptG6wT3U2hJGZLjGxM3SnZKJRIxr638TgZIAV
vpNx6MtLgiHQLAQAYyVVlii1+hEh7HMHq4HzJnxRrs8wDen0dBJp0wMFThL6c0vA1rzLKgJGDjjn
E+sChlAazSG3Ivgx/lIoGFvyNS3B1iLHVUD5yl76VbHInTq5vIH+yn7jHlqQckY5JlLkf9ka+nTF
ZW+UM+dWsNCWLGVc0Yqdbv+dstJJ7S/dSdQ2eGITLMW87gGFsUvaGRAZSAJpirC12lHTWsLs7Pq5
ciIdNDOi9S+3emHjhCKE9BcRDv4xgFxsac08S7DJ2pUwj9OnLVpQeFS9/WTYqn4xHStVLmDNQ5Ze
xPQG/+5rR16lG4PCW1PJGAfwOoi8ue2e+Z9XqGD939hKZwJWbmzUrW5GBSZUWXcfxLgBaJNMpU7w
XEueDm8RqQIn/IqkI1PfFNihYBnfgwP7BX7e6ADOmbsRvy0ec+lsUFDx9tvwwu99TLyLiJPCi1bc
fue4RYjfw+g3MJKzCZdzBjMcu3eqCFAb4qlgQlPJ4enrP+WmnwFcWFtDiXeLBBX37YR0F4vOzsaP
mt15h8tH6loRcJtMzkAEjEiI+KCDGyWVnFZgJbf4BIXfJtxemXVudR8KtBQUQ+YitrzimUSehNzF
nY7nWAveD2ICBjRNtkj38OjtvRe7ZQbjKH84rRMOLTQNS0TFFgODAkL8wzIWYi8cPNvahpUwtwSy
YJrvUmdS/RE8J/mScJ0+GvqfmiJzFfRPKQkiYcJx8EfuVFs07CLwHGwP7kxBQM+Aa/s8fPk9aOHQ
BIp5yOZ8dOtkvbESSVY4V9OQvccolWSpPyeEnjkpS2Nk/1mHDujv5KiDanKNEHKolHNWR2HMp/66
NJKrBxLOD/scUjchWQTwXE3gLLdE3gHNkxp4M0eH6a0Z768oHbm0GQBXJduq8CRLy31ve7mg4kM6
YbSSesFtmANljnGG2n51g6pYnYZBNcX/5Xxh3IEowbg7q7d25MCukOvTqT+Jkr/c7jjcd3nZfHLI
HClX+ruHO4SBY4+1gSNc8UfNX+eREUrPnfEJPStBKUUq8OTQQY6P0xf3D/LZVKOKuqp5BdpHK/Kv
JLtGjWbjAAyokHAL4BQBHnNkM/n09/z+P66fCy8Jk1UHUcLv4NfplFGkn9OaJY5z5AWdcg9/HYVc
LluHaEGEphLkUWMFnvAP8Fk4xtGN8/hulGuIZ/mGaQFOr2wMxrhdvZwtW0TO94t3sNpV5MhkxFR4
jVDg6DeAP/qhLiYwXpBlrewIQSpCmRdQy4OKMZjPaGGEdiFE/xY6BNf/isVB+/GQrQLf/U3o1nlK
NEHHP8IJG1oTt7lQ7Sio1hx1uUVn38J7VD4EKUG8tBXX1pmkurENipRHTB3rTSepfaXyH05tduPQ
C4Qp1k83IZPmurLaOj6uNxfYDxaFnv2nNryXoZSL8Lov6vqDAf9TCaT3LmXqfRngS0AUCCHyimud
gQOT8oA6tYGIWe7L19YfojFmWL63J2kh9Epxm4/gaYG6Ew9lENM62PlWf282jlMbV7OetVnNf+fD
eY6IQsZjsNWycKO8y+3IEmlz0IAEdNjpqk86ZrnIAAk9cQWExeV77i1sLA2e0coA9NpQVi+HVVV1
+7joi58q8A2ZM0bWFMmllG/h8lULDZqcmKX9oRPrZOYLoUovgxIzeEzMcL1VEpkVo/tUDQJFWKoj
y7mJdyaB5IK0qOnweKTNxXbmwNwgKPO9IPQSN4L0d4USH6ssc1pkHikfye/LhaXrPPBY9sRpAsnA
Y44VgYEXLBmG5NcWwytzsx69hNEYiTRBY14i7RRQNJ//+nzADEX3DyN3Jck6MKUSXTjjO09cwI/c
p+mH96cestWBwy7tJ4Bb0Kuy1+CZmtnxPIGED3gzPBr82ui8JJITPSp+TrkkKi/OQomoi1uLPLTO
uOzP7sqwvSBSjNqNOql5yevJn5pcKPCkG2zRBFdQ1Q0agTdqPHWX8aCXcB/4o5d9Vzfz3tb5RJY8
keQtbNTxgIykfgJ0eO9yQKXAM0L98qwwIZMK4lpAnaWwvT+hyu2ihZOJK/dDdrHpj083sXvzkWf+
FN1zQG0AHX39cQGMXAxmjnwRdPwAwJF8L9J+2VNKj57JDdhAZX3qiozzGZLCf6KkQiMqedG7x5N6
MxYN1y0H+gEIWS/nsumzVouSEM5CcpxFupa/vOLGJI8jm5UzruPF75FX2g4LxSQPLNctaezKepAP
H+pJ5UWkygvNkEjVl6QTbbkxOZNLKLLNIX5AHVftkVwOn8aaf/wReat3kLe7oyOlZVaTrdi7U6Ko
4kNGmLSEyCnhNhtS30P5WhPzEZAnOqxsibd+lmTzRSoahAh/YnV75DuPc3kN7E7AcN5BNH1ZusdH
/uYwC2dsIfxlFyGgQmq8DtFutnbPK9e7nY5NNC45wo0oYzUY/xPITdrrJDabszrNWeA2gZ0IGoUS
uKEwAqArpuEi7lM83iatgWVv/0hKedkz2q84TTC5nW0P5uwGgq8pLdRx0sULlOWBL8DLh0xT47JR
wAbwqGxvHg/fqkOL95w6ckVLtwrlrk2dN69/GOBd0CM6LRam2H7NrWPm8G5VYTINoWt9UOOjGNZa
iYybQ3YZ18kGYuPmla+XHtf+wNzv7B0n2tRrAZRnRrl0+N7kY3ZO3o6nmV1Nh7oC0jfkidPi3rgN
EDtvvizKPgaPG5/FyndBkJaG2xZCjaPOH5S+owslohuCt2nCJQXUM4zd7jOIq4b1vitat7TU52yl
OEWCxKEGEvFuyCqtllY83eRzTZyUrAAPzmkwg8+r579r1MBQFCIDhJrBjMy0+1y473kCv38ZcWEr
bspV8mwTzjlVl+ohjkCQTI0Ler1TKhO/MXRwDPc54YPHB1KxKs3gGXrhpTAuMHFPrnUcYqKe28ao
yxhhF/WP2Ckgi+yfUu2DJM+oMbDbjdXn4ryCR9YI1beJffgoXFBLxDa50RWqczzCxMys8Ruj0vOo
JkTdjJEf+E/PIQM3CXj1q9NWpYVpD6LBAtpfIeSYiJVJTeAbOkRI+/I0mUT4eD3io6kXdQVpUiqE
NGWSsHNkh8H9b8MYbIUdH8lfv7uFe65H7/ZfP9rMeUi3VUCpp5ZTgsZZx6GxgrCUgTZCQ5CkxG1U
XUWTyfYXF50Zkh1oj5SxDskwPbttvA1EVYatupf/+M33EN6zJd+QUex+b5NrmJN8Nz9zN+BuWOAU
BNNQ3Kukw3QjsnghQggTpFcuertRGURIC4TiWqKbcBeTQ69NN4B3ZG1Qzv/bw15mzshZtme7AK5f
Y96rkInwslqp+B0n6DIsUsfHduhRGxGPML1XsJfiwCysC1nnCAosFcuFAevubwXc4Ro/rcNCGQcR
gskouZZb+3DmLU8iEa8kkM7ULRYqvtW0drQFpNU32powODzJV8F9atpr3vBQntsJ20FiI56Zwu8c
U52ZyYun+BzI2QbfsupHt1QU4RUW6/ercnsg55oQYIcu6cQDhvMnsduzNWLtBy1prk8z9kml2bXk
UL59zf0BYLh9n0icZsKMsjKv4JovaHPGsSgHFO7vcifbncUaP1GXt1vHA1C5dfYBwQ8fGf8tA1jc
LEpkN2JFTBRD9/hcXSAbqeVo1dlLcbOTylHeYj3er+rOBaqvNVpd1hQOHYjBYecy29CCl6VKCdP8
JZAFdLHjzVNdaza+eJIjKRbolnJSDyHyyk6N/j2BM1MHSpkDMWgq9sLFpeWglqgQelciB2aLF6Qu
dvfnVOPX4wXCvgFZFz7GGYgNZbzM5ag4FZWvRfK5JqnMh6BK7vPED/uUqwScfRRuDhRohHpPM+cP
Skkexhp3/8cLybiY6xDuNTv4kQBymPt3Puf0h9YfxZzk6psendJKxzTX0wXcanHDZEI0QTLXhm4d
GSIv+c8zZZO7QojkuaCtHcm6qwXiL/rgX7lccqQiVQ01fUzhYWXyhGKqkz/QbvKbAmSa+hOcNz+M
Ds1V8A5MpvClCuALpI6z5jk+O22JhK/A+N1ZE4/vHL6144CRw0/xqspoqYdnIpkllmqlilVeHIJX
9I83z/Ih1J4SuSqScQ4S4WUfQtSGY0qb79IpLmJukiWfcdmIiaiyjD/yAVnuA1bSbhOJswwSCX7j
b9/+emEfqOWJnp+kWe2+U1uQy6tWM9y6RhsfnaA1TpY2BbGBHXnajob8UOg5EBQMqkUBZGmrvhS6
cUezoyt3SSSQULJ7X6QfqzJrRkbP+Rw2GvtAUQ40Yefqvia3SKGKAuqXih6rbG7oYDxMCPsNgt3r
HPDctgPQPrkpmkNbpbrYR5ZoubmyYf7mJ8CGcBHh7XVY3moR1ETPjxdmqu41asVPHn6ylOO7pqgK
IxUcJ3IDpurTWzj1XF4VrxA9FWfgCu5irLq5Nl8Swbh8BK7C64GSwPOs0FgPOaCeAg5LezfBlKCt
Y3zMtWXT3v5fTXrqK8IAlJIw8MbQOz8AMQEHOyAGnPd7gSCJ1W9Kuqdg1fgBcN5AT+So+65YBxeL
yvpG9ak6Nvd1RtIYXXa+biTXra8/JMStqUL3ZK361EHzc2EXlbgpoPbgwcLV62yOz4/0siwWntZp
oCO5/rCHzCrrXtMCiI8aCzdbZddQIzSl488BV96LEBJ74BSoASY5uTBqxVNA8f+DBVLUWbcnJeJK
wbjVpoMRxhdtlCBZdXtusHT0KrsEDMtejuKnz9DR/q5R8Z+kv40Le0AL2HJ8P5RKU1aqCief6v39
P2OJLpJhPEJO/YO+ty/wyg2LuWyx0DxEbp9yD/fGDi9q9z0pPjtt4IhQyrFUi9kMCAo/jBUUUD9f
LZAX/TN/1fUWI7/tx7FxbZoRrLYGqjaPVQloiSFSk70vLAIjXuOuA/MOoLPue2Kx4RrTgdvmebgk
2Mkn/mSqeozref3gQPPL3qqvnnwoAVxS/vY1S3TzBbZhWyAYspeu1BcBbads1Qe7+HQjCNch4OcF
XCXhrneXJ++P1ErbNQPE0KrPDGUUvpi8KWbmSwHrexY1cIgRk1gGk5ADBSlFvcX45uoBFlhmgbn8
GtDvIuS1DcZbkJUaGEzw5ThrOryhKyoEB+m5EIR3V7J+MS32JF0yK0cXEeLAbiCfffV6ZE9G11qq
dcaLgRize2eqJWaGN/8UfI/YLi4upthaYPSYuxR/3s6ubZtN2GYb8phHtzjl2nPoLkGFou8Pa1um
neheekCo/Md7h54/aIaGV7LS5KwyKzS+UGNe8oUNb2rttvC9BAxSAeIXYtmEGSYAQNShAU4pvBAs
s4AM4WK0Kov/7GKJ5KFLFfn0Bw6GZA60SORSvGhLJ+Rm1M4XhfBgatUWvVft0XgQddcuBPfWrkQo
vdqXTp+9U4RKGsHifcRVG6ClwJ1vQiE+GeQlveeUB//j7MOkC6iRzQamXOLNAYWVL+TOGKPodvdI
4aDrTu+QwYAybDEmguHPlVgzzqo2L8I4DAemCuBTYCH0h6dnXqa/ZkwZdkNxrQ9c9iBRLB7YWUma
IPv8/89gkUnWqzsTn4ckkX0gLWKtfs1Gj+qPPzcDxkuuP3JUMwS6wWe1I5VQDBRPyoBhKPh9zrzZ
o9n2OaiulgV4eeaxvne0fvLFlfp5dlXGbFxQCfw5DgIsyJEqhp1U74fdkYjrvGqu0zXyrsrBKCR+
gWXHZtaBwoHknI0grIUGk3QA9at7EUnPnKFdNXP/oNDlYn+L6/M8/K9lBbwUEbm+8AfC2yINpnbp
8Isvj4S7ORxvXbJlAPjPMQsfNMVlwbEplLtrd2kXaNTRxYPruIWKYy6nIP8FBkJjlsaihtP6/kbB
tw9wET3MnFTv3pSv5tNXrxC1mqcbocEjlabZd8TEoQ0Lv7RSdrUomtV9C+dPCH6OR7wHVI6YxUYc
OFXkvrTqLpL5kIaVe2z/FLhIVmozQZulF4NybjTl7TIbWWsItIhb5vv48zHlNAKwYBErck5IHK85
6hi1A6k3caypZOvPHAb8ANQUdWdJ9/3O68F/zMSqcfOLpc5snbP2V7VsMXX9tDlCLnuZoZLHw+wE
FzPWIUl/frk3E9zXt3EfgjCSY6tqyfNPIcFsVjbtRoi4To4XT/xB5k6R6qvP8ZYVGJDAkkYHr+3K
HFQL3vc4ObzwJaB4ajHNUHyF8AbiPJDyVKzwusfZtz4FFuKfFMuWFI0kyIZ06F+yEzmMUiPA9Idl
KVnxJuJqXBj6hXGNXGjXmZdYW0z/uwvr9ingmZFgaZIkByT5I7M3WkOBLRLdIeHgZpU7LU0ZQPGb
duxPd/so6h3qdXTsViRI25MGog4NOFZPeT/5bvvD827d8cVFxdvXaZCeQOlRLRRfsqmWyw2I0pSC
OnGXbEE2ybt9vwutXdqgh86txcglKe9umBmMwZlIzgHC8LAAimOE+ZMe2o+adteThXfWWJH842xy
c/4K2xPKe2YrHPDHbZgwwvKvbFAndN++HaGsW1uAVDIy6sj8XXkABgdR2y7C5AB/u5CBc5sVIKBD
FOUXFKIihKBW4ig1+ga+k2wEOE3Mio4AZeBxt1+99SEN6RH6StQjLVwNLUTNLS4of2nDnZpjI3Vo
atV8LRcFBtXraOIBxCEP3TgPCc6nY2MVcrkqwkwdzPTeI0P+eu2KuvlHa3fSiuxirjafEj/faWbj
bHoZpCO9vAMUXrqGOp7mEmt90eBQUnw2j1VFjjIhjNJP2UmuZrrKqakq6Y6K1siUxkOa/FxSAFPe
+YSOe42q/3CaHJ74GABLhveB4bsHWkXRoR+WVp9fHoUBkG1TR/aYdZaOBvt3FMsjEKMk7E50m/RG
Kb6v+lhCGi6zJN3YViRPFfV52FTQOIIYJcBomjt8IfMsP8j8NoutNjQmlu+tVMPfDeurWd6xjaBA
cpL8nd/Qqlzs1g+Lk2kxI0W07ZVqpdCbu2hLDfUNCobZgrKjUJg3cDMMqauZ9lWMKTRs/UHe+UnA
tuvM2SVGBtNnupR+9KJ5WbnMUKIaD7i4r5o8EvEXVkkp6N171l/uL8eYjRNByhUGMIxwbE6Pv7jJ
A80UYWQY9L0CQPIJAbMNXTFzn+HacugejtSamDchnnqiMGqsciAzynJkE8JkopAhJCCFwo5AnG2R
Q8NvowhZqkfdC9RT/W6cbar/RMM91BtMPkg=
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
