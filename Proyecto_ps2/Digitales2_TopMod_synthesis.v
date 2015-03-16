////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Digitales2_TopMod_synthesis.v
// /___/   /\     Timestamp: Sat Mar 14 22:38:00 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Digitales2_TopMod.ngc Digitales2_TopMod_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: Digitales2_TopMod.ngc
// Output file	: /home/daniel/Proyecto_2_Digitales/netgen/synthesis/Digitales2_TopMod_synthesis.v
// # of Modules	: 1
// Design Name	: Digitales2_TopMod
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Digitales2_TopMod (
  clk, rst, EN, ps2d, ps2c, correct, Alarma_Vent, Catodos, Anodos
);
  input clk;
  input rst;
  input EN;
  input ps2d;
  input ps2c;
  output correct;
  output [1 : 0] Alarma_Vent;
  output [7 : 0] Catodos;
  output [3 : 0] Anodos;
  wire clk_BUFGP_0;
  wire rst_IBUF_1;
  wire EN_IBUF_2;
  wire ps2d_IBUF_3;
  wire ps2c_IBUF_4;
  wire Catodos_7_OBUF_7;
  wire Catodos_6_OBUF_8;
  wire Catodos_5_OBUF_9;
  wire Catodos_4_OBUF_10;
  wire Catodos_3_OBUF_11;
  wire Catodos_2_OBUF_12;
  wire Catodos_1_OBUF_13;
  wire Catodos_0_OBUF_14;
  wire Anodos_3_OBUF_15;
  wire Anodos_2_OBUF_16;
  wire Anodos_1_OBUF_17;
  wire Anodos_0_OBUF_18;
  wire N0;
  wire N1;
  wire \Enlace_P1_P2/C_Carro ;
  wire \Enlace_P1_P2/C_Presencia ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ;
  wire \Enlace_P1_P2/Proyecto_1/in_flag ;
  wire \Enlace_P1_P2/Proyecto_1/out_flag ;
  wire \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ;
  wire \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ;
  wire \Enlace_P1_P2/Proyecto_1/Entradas/Pre_51 ;
  wire \Enlace_P1_P2/Proyecto_1/Entradas/Ca_52 ;
  wire \Prueba/Protocolo/act_state_FSM_FFd1_58 ;
  wire \Prueba/tick_data ;
  wire \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2-In ;
  wire \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1-In ;
  wire \Prueba/Toma_Dato/act_state_125 ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1-In ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2-In ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In ;
  wire \Enlace_P1_P2/Captador/Veri_Si ;
  wire \Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>1 ;
  wire \Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o ;
  wire \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 ;
  wire \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ;
  wire \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ;
  wire \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2_177 ;
  wire \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ;
  wire \Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ;
  wire \Prueba/Protocolo/Mcount_cont_act3 ;
  wire \Prueba/Protocolo/act_state_FSM_FFd2_181 ;
  wire \Prueba/Protocolo/act_state_FSM_FFd1-In_182 ;
  wire \Prueba/Protocolo/act_state_FSM_FFd2-In ;
  wire \Prueba/Protocolo/_n0082_inv ;
  wire \Prueba/Protocolo/ps2_next ;
  wire \Prueba/Protocolo/ps2_act_192 ;
  wire N3;
  wire \Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal11 ;
  wire \Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal12_203 ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In1_204 ;
  wire \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In2_205 ;
  wire \Enlace_P1_P2/Captador/Salidas/Mmux_Temp10 ;
  wire \Enlace_P1_P2/Captador/Salidas/Mmux_Temp101_207 ;
  wire N5;
  wire N7;
  wire N9;
  wire N11;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N21;
  wire N25;
  wire \Prueba/Protocolo/Mmux_ps2_next1 ;
  wire \Prueba/Protocolo/Mmux_ps2_next11_219 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<1>_rt_240 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<2>_rt_241 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<3>_rt_242 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<4>_rt_243 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<5>_rt_244 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<6>_rt_245 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<7>_rt_246 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<8>_rt_247 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<9>_rt_248 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<10>_rt_249 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<11>_rt_250 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<12>_rt_251 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<13>_rt_252 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<14>_rt_253 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<15>_rt_254 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<16>_rt_255 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<17>_rt_256 ;
  wire \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<18>_rt_257 ;
  wire \Prueba/Toma_Dato/act_state_rstpot_258 ;
  wire N27;
  wire N28;
  wire N35;
  wire N36;
  wire N37;
  wire N39;
  wire N41;
  wire N43;
  wire \Prueba/Protocolo/_n0071_inv_rstpot_267 ;
  wire \Prueba/Protocolo/cont_act_0_dpot_268 ;
  wire \Prueba/Protocolo/cont_act_1_dpot_269 ;
  wire \Prueba/Protocolo/cont_act_2_dpot_270 ;
  wire \Prueba/Protocolo/cont_act_3_dpot_271 ;
  wire N45;
  wire N46;
  wire \Enlace_P1_P2/Captador/Salidas_N10 ;
  wire \Enlace_P1_P2/Captador/Salidas_N9 ;
  wire \Enlace_P1_P2/Captador/Salidas_N7 ;
  wire \Enlace_P1_P2/Captador/Salidas_N5 ;
  wire \Enlace_P1_P2/Captador/Salidas_N3 ;
  wire [1 : 0] \Enlace_P1_P2/Proyecto_1/Salidas/out ;
  wire [7 : 0] \Prueba/instance_name/dato_out ;
  wire [10 : 0] \Prueba/Protocolo/bus_act ;
  wire [4 : 0] \Enlace_P1_P2/C_Temp ;
  wire [1 : 0] \Enlace_P1_P2/Proyecto_1/log ;
  wire [1 : 0] \Enlace_P1_P2/Proyecto_1/Dec ;
  wire [3 : 1] \Enlace_P1_P2/Proyecto_1/Uni ;
  wire [18 : 0] \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont ;
  wire [4 : 0] \Enlace_P1_P2/Proyecto_1/Entradas/Temp ;
  wire [18 : 0] Result;
  wire [0 : 0] \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_lut ;
  wire [17 : 0] \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy ;
  wire [3 : 0] \Enlace_P1_P2/Captador/REG ;
  wire [7 : 0] \Enlace_P1_P2/Captador/Registro_Ign/dato_out ;
  wire [7 : 0] \Enlace_P1_P2/Captador/Registro_Pre/dato_out ;
  wire [7 : 0] \Enlace_P1_P2/Captador/Registro_Uni/dato_out ;
  wire [7 : 0] \Enlace_P1_P2/Captador/Registro_Dec/dato_out ;
  wire [5 : 2] \Enlace_P1_P2/Captador/Salidas/_n0059 ;
  wire [3 : 0] \Prueba/Protocolo/cont_act ;
  wire [7 : 0] \Prueba/Protocolo/filtro_act ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Entradas/Ca  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/in_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/C_Carro ),
    .Q(\Enlace_P1_P2/Proyecto_1/Entradas/Ca_52 )
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Entradas/Temp_4  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/in_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/C_Temp [4]),
    .Q(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4])
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Entradas/Temp_3  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/in_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/C_Temp [3]),
    .Q(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3])
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Entradas/Temp_2  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/in_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/C_Temp [2]),
    .Q(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2])
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Entradas/Temp_1  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/in_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/C_Temp [1]),
    .Q(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [1])
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Entradas/Temp_0  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/in_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/C_Temp [0]),
    .Q(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0])
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Entradas/Pre  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/in_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/C_Presencia ),
    .Q(\Enlace_P1_P2/Proyecto_1/Entradas/Pre_51 )
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Salidas/out_1  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/out_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Proyecto_1/log [1]),
    .Q(\Enlace_P1_P2/Proyecto_1/Salidas/out [1])
  );
  FDCE   \Enlace_P1_P2/Proyecto_1/Salidas/out_0  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Proyecto_1/out_flag ),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Proyecto_1/log [0]),
    .Q(\Enlace_P1_P2/Proyecto_1/Salidas/out [0])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_0  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[0]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [0])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_1  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[1]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [1])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_2  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[2]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [2])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_3  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[3]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [3])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_4  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[4]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [4])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_5  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[5]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [5])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_6  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[6]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [6])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_7  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[7]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [7])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_8  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[8]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [8])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_9  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[9]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [9])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_10  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[10]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [10])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_11  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[11]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [11])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_12  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[12]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [12])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_13  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[13]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [13])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_14  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[14]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [14])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_15  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[15]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [15])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_16  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[16]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [16])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_17  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[17]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [17])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont_18  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(Result[18]),
    .Q(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [18])
  );
  FDC   \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1  (
    .C(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [18]),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1-In ),
    .Q(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 )
  );
  FDC   \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2  (
    .C(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [18]),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2-In ),
    .Q(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 )
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_lut [0]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [0])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<0>  (
    .CI(N0),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_lut [0]),
    .O(Result[0])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<1>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [0]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<1>_rt_240 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [1])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<1>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [0]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<1>_rt_240 ),
    .O(Result[1])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<2>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [1]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<2>_rt_241 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [2])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<2>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [1]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<2>_rt_241 ),
    .O(Result[2])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<3>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [2]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<3>_rt_242 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [3])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<3>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [2]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<3>_rt_242 ),
    .O(Result[3])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<4>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [3]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<4>_rt_243 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [4])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<4>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [3]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<4>_rt_243 ),
    .O(Result[4])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<5>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [4]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<5>_rt_244 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [5])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<5>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [4]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<5>_rt_244 ),
    .O(Result[5])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<6>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [5]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<6>_rt_245 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [6])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<6>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [5]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<6>_rt_245 ),
    .O(Result[6])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<7>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [6]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<7>_rt_246 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [7])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<7>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [6]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<7>_rt_246 ),
    .O(Result[7])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<8>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [7]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<8>_rt_247 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [8])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<8>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [7]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<8>_rt_247 ),
    .O(Result[8])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<9>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [8]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<9>_rt_248 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [9])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<9>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [8]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<9>_rt_248 ),
    .O(Result[9])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<10>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [9]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<10>_rt_249 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [10])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<10>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [9]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<10>_rt_249 ),
    .O(Result[10])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<11>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [10]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<11>_rt_250 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [11])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<11>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [10]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<11>_rt_250 ),
    .O(Result[11])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<12>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [11]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<12>_rt_251 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [12])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<12>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [11]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<12>_rt_251 ),
    .O(Result[12])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<13>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [12]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<13>_rt_252 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [13])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<13>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [12]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<13>_rt_252 ),
    .O(Result[13])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<14>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [13]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<14>_rt_253 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [14])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<14>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [13]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<14>_rt_253 ),
    .O(Result[14])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<15>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [14]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<15>_rt_254 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [15])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<15>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [14]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<15>_rt_254 ),
    .O(Result[15])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<16>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [15]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<16>_rt_255 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [16])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<16>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [15]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<16>_rt_255 ),
    .O(Result[16])
  );
  MUXCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<17>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [16]),
    .DI(N0),
    .S(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<17>_rt_256 ),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [17])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<17>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [16]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<17>_rt_256 ),
    .O(Result[17])
  );
  XORCY   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<18>  (
    .CI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy [17]),
    .LI(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<18>_rt_257 ),
    .O(Result[18])
  );
  FDC   \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1-In ),
    .Q(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 )
  );
  FDC   \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2-In ),
    .Q(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 )
  );
  FDC   \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In ),
    .Q(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 )
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_0  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [0]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [0])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_1  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [1]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [1])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_2  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [2]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [2])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_3  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [3]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [3])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_4  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [4]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [4])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_5  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [5]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [5])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_6  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [6]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [6])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Dec/dato_out_7  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [0]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [7]),
    .Q(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [7])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_0  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [0]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [0])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_1  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [1]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [1])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_2  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [2]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [2])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_3  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [3]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [3])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_4  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [4]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [4])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_5  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [5]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [5])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_6  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [6]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [6])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Uni/dato_out_7  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [1]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [7]),
    .Q(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_0  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [0]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [0])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_1  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [1]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [1])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_2  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [2]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [2])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_3  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [3]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [3])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_4  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [4]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [4])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_5  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [5]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [5])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_6  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [6]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [6])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Pre/dato_out_7  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [2]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [7]),
    .Q(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [7])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_0  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [0]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [0])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_1  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [1]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [1])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_2  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [2]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [2])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_3  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [3]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [3])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_4  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [4]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [4])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_5  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [5]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [5])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_6  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [6]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [6])
  );
  FDCE   \Enlace_P1_P2/Captador/Registro_Ign/dato_out_7  (
    .C(clk_BUFGP_0),
    .CE(\Enlace_P1_P2/Captador/REG [3]),
    .CLR(rst_IBUF_1),
    .D(\Prueba/instance_name/dato_out [7]),
    .Q(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [7])
  );
  FDP   \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4  (
    .C(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [16]),
    .D(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .PRE(rst_IBUF_1),
    .Q(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 )
  );
  FDC   \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1  (
    .C(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [16]),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2_177 ),
    .Q(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 )
  );
  FDC   \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2  (
    .C(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [16]),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .Q(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2_177 )
  );
  FDC   \Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3  (
    .C(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [16]),
    .CLR(rst_IBUF_1),
    .D(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .Q(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 )
  );
  FDCE   \Prueba/Protocolo/cont_act_3  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/cont_act_3_dpot_271 ),
    .Q(\Prueba/Protocolo/cont_act [3])
  );
  FDCE   \Prueba/Protocolo/cont_act_2  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/cont_act_2_dpot_270 ),
    .Q(\Prueba/Protocolo/cont_act [2])
  );
  FDCE   \Prueba/Protocolo/cont_act_1  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/cont_act_1_dpot_269 ),
    .Q(\Prueba/Protocolo/cont_act [1])
  );
  FDCE   \Prueba/Protocolo/cont_act_0  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/cont_act_0_dpot_268 ),
    .Q(\Prueba/Protocolo/cont_act [0])
  );
  FDC   \Prueba/Protocolo/act_state_FSM_FFd1  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/act_state_FSM_FFd1-In_182 ),
    .Q(\Prueba/Protocolo/act_state_FSM_FFd1_58 )
  );
  FDC   \Prueba/Protocolo/act_state_FSM_FFd2  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/act_state_FSM_FFd2-In ),
    .Q(\Prueba/Protocolo/act_state_FSM_FFd2_181 )
  );
  FDC   \Prueba/Protocolo/ps2_act  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/ps2_next ),
    .Q(\Prueba/Protocolo/ps2_act_192 )
  );
  FDCE   \Prueba/Protocolo/bus_act_10  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(ps2d_IBUF_3),
    .Q(\Prueba/Protocolo/bus_act [10])
  );
  FDCE   \Prueba/Protocolo/bus_act_9  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [10]),
    .Q(\Prueba/Protocolo/bus_act [9])
  );
  FDCE   \Prueba/Protocolo/bus_act_8  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [9]),
    .Q(\Prueba/Protocolo/bus_act [8])
  );
  FDCE   \Prueba/Protocolo/bus_act_7  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [8]),
    .Q(\Prueba/Protocolo/bus_act [7])
  );
  FDCE   \Prueba/Protocolo/bus_act_6  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [7]),
    .Q(\Prueba/Protocolo/bus_act [6])
  );
  FDCE   \Prueba/Protocolo/bus_act_5  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [6]),
    .Q(\Prueba/Protocolo/bus_act [5])
  );
  FDCE   \Prueba/Protocolo/bus_act_4  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [5]),
    .Q(\Prueba/Protocolo/bus_act [4])
  );
  FDCE   \Prueba/Protocolo/bus_act_3  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [4]),
    .Q(\Prueba/Protocolo/bus_act [3])
  );
  FDCE   \Prueba/Protocolo/bus_act_2  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [3]),
    .Q(\Prueba/Protocolo/bus_act [2])
  );
  FDCE   \Prueba/Protocolo/bus_act_1  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [2]),
    .Q(\Prueba/Protocolo/bus_act [1])
  );
  FDCE   \Prueba/Protocolo/bus_act_0  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/Protocolo/_n0082_inv ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [1]),
    .Q(\Prueba/Protocolo/bus_act [0])
  );
  FDC   \Prueba/Protocolo/filtro_act_7  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(ps2c_IBUF_4),
    .Q(\Prueba/Protocolo/filtro_act [7])
  );
  FDC   \Prueba/Protocolo/filtro_act_6  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/filtro_act [7]),
    .Q(\Prueba/Protocolo/filtro_act [6])
  );
  FDC   \Prueba/Protocolo/filtro_act_5  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/filtro_act [6]),
    .Q(\Prueba/Protocolo/filtro_act [5])
  );
  FDC   \Prueba/Protocolo/filtro_act_4  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/filtro_act [5]),
    .Q(\Prueba/Protocolo/filtro_act [4])
  );
  FDC   \Prueba/Protocolo/filtro_act_3  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/filtro_act [4]),
    .Q(\Prueba/Protocolo/filtro_act [3])
  );
  FDC   \Prueba/Protocolo/filtro_act_2  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/filtro_act [3]),
    .Q(\Prueba/Protocolo/filtro_act [2])
  );
  FDC   \Prueba/Protocolo/filtro_act_1  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/filtro_act [2]),
    .Q(\Prueba/Protocolo/filtro_act [1])
  );
  FDC   \Prueba/Protocolo/filtro_act_0  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/filtro_act [1]),
    .Q(\Prueba/Protocolo/filtro_act [0])
  );
  FDCE   \Prueba/instance_name/dato_out_7  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [8]),
    .Q(\Prueba/instance_name/dato_out [7])
  );
  FDCE   \Prueba/instance_name/dato_out_6  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [7]),
    .Q(\Prueba/instance_name/dato_out [6])
  );
  FDCE   \Prueba/instance_name/dato_out_5  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [6]),
    .Q(\Prueba/instance_name/dato_out [5])
  );
  FDCE   \Prueba/instance_name/dato_out_4  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [5]),
    .Q(\Prueba/instance_name/dato_out [4])
  );
  FDCE   \Prueba/instance_name/dato_out_3  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [4]),
    .Q(\Prueba/instance_name/dato_out [3])
  );
  FDCE   \Prueba/instance_name/dato_out_2  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [3]),
    .Q(\Prueba/instance_name/dato_out [2])
  );
  FDCE   \Prueba/instance_name/dato_out_1  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [2]),
    .Q(\Prueba/instance_name/dato_out [1])
  );
  FDCE   \Prueba/instance_name/dato_out_0  (
    .C(clk_BUFGP_0),
    .CE(\Prueba/tick_data ),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Protocolo/bus_act [1]),
    .Q(\Prueba/instance_name/dato_out [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Enlace_P1_P2/Proyecto_1/Control/Est_act_EN_in1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .O(\Enlace_P1_P2/Proyecto_1/in_flag )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Enlace_P1_P2/Proyecto_1/Control/Est_act_EN_out1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .O(\Enlace_P1_P2/Proyecto_1/out_flag )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2-In1  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .I2(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .O(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1-In1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .O(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Prueba/Toma_Dato/Mmux_tick_data11  (
    .I0(\Prueba/Toma_Dato/act_state_125 ),
    .I1(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .O(\Prueba/tick_data )
  );
  LUT5 #(
    .INIT ( 32'h44444440 ))
  \Enlace_P1_P2/Proyecto_1/Logica/Mmux_C_S11  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Ca_52 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Pre_51 ),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I4(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .O(\Enlace_P1_P2/Proyecto_1/log [0])
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \Enlace_P1_P2/Proyecto_1/Logica/Mmux_C_S21  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Ca_52 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Pre_51 ),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .O(\Enlace_P1_P2/Proyecto_1/log [1])
  );
  LUT4 #(
    .INIT ( 16'h0E0C ))
  \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1-In1  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 ),
    .I1(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ),
    .I2(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ),
    .I3(\Enlace_P1_P2/Captador/Veri_Si ),
    .O(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h7E72 ))
  \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2-In1  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ),
    .I1(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ),
    .I2(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 ),
    .I3(\Enlace_P1_P2/Captador/Veri_Si ),
    .O(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Enlace_P1_P2/Captador/Control/act_state_registros<3>1  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ),
    .I1(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ),
    .O(\Enlace_P1_P2/Captador/REG [3])
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \Enlace_P1_P2/Captador/Control/act_state_registros<2>1  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ),
    .I1(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 ),
    .I2(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ),
    .O(\Enlace_P1_P2/Captador/REG [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \Enlace_P1_P2/Captador/Control/act_state_registros<1>1  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ),
    .I1(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 ),
    .I2(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ),
    .O(\Enlace_P1_P2/Captador/REG [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Enlace_P1_P2/Captador/Control/act_state_registros<0>1  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ),
    .I1(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 ),
    .O(\Enlace_P1_P2/Captador/REG [0])
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>11  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [7]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [6]),
    .I2(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [5]),
    .I3(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [4]),
    .I4(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [3]),
    .I5(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [2]),
    .O(\Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>1 )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp21  (
    .I0(rst_IBUF_1),
    .I1(\Enlace_P1_P2/Captador/Salidas/_n0059 [5]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .O(\Enlace_P1_P2/C_Temp [0])
  );
  LUT6 #(
    .INIT ( 64'h8202FFFF82028202 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<6>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Uni [2]),
    .I2(\Enlace_P1_P2/Proyecto_1/Uni [1]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0]),
    .I4(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .I5(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .O(Catodos_6_OBUF_8)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<7>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2_177 ),
    .I2(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .I3(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .O(Catodos_7_OBUF_7)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Enlace_P1_P2/Proyecto_1/BCD/Dec<1>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .O(\Enlace_P1_P2/Proyecto_1/Dec [1])
  );
  LUT4 #(
    .INIT ( 16'hA624 ))
  \Enlace_P1_P2/Proyecto_1/BCD/Dec<0>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [1]),
    .O(\Enlace_P1_P2/Proyecto_1/Dec [0])
  );
  LUT4 #(
    .INIT ( 16'h3942 ))
  \Enlace_P1_P2/Proyecto_1/BCD/Uni<1>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [1]),
    .O(\Enlace_P1_P2/Proyecto_1/Uni [1])
  );
  LUT4 #(
    .INIT ( 16'h6246 ))
  \Enlace_P1_P2/Proyecto_1/BCD/Uni<2>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [1]),
    .O(\Enlace_P1_P2/Proyecto_1/Uni [2])
  );
  LUT4 #(
    .INIT ( 16'h0284 ))
  \Enlace_P1_P2/Proyecto_1/BCD/Uni<3>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [1]),
    .O(\Enlace_P1_P2/Proyecto_1/Uni [3])
  );
  LUT6 #(
    .INIT ( 64'hFDFDFDFDFDFDFDDF ))
  \Prueba/Protocolo/Mcount_cont_act31  (
    .I0(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .I1(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I2(\Prueba/Protocolo/cont_act [3]),
    .I3(\Prueba/Protocolo/cont_act [2]),
    .I4(\Prueba/Protocolo/cont_act [0]),
    .I5(\Prueba/Protocolo/cont_act [1]),
    .O(\Prueba/Protocolo/Mcount_cont_act3 )
  );
  LUT4 #(
    .INIT ( 16'h2E0C ))
  \Prueba/Protocolo/act_state_FSM_FFd2-In1  (
    .I0(EN_IBUF_2),
    .I1(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .I2(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I3(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ),
    .O(\Prueba/Protocolo/act_state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h0E00 ))
  \Prueba/Protocolo/_n0082_inv1  (
    .I0(EN_IBUF_2),
    .I1(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .I2(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I3(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ),
    .O(\Prueba/Protocolo/_n0082_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFFEFFFF ))
  \Prueba/Toma_Dato/_n0014_inv_SW0  (
    .I0(\Prueba/Protocolo/bus_act [1]),
    .I1(\Prueba/Protocolo/bus_act [4]),
    .I2(\Prueba/Protocolo/bus_act [3]),
    .I3(\Prueba/Protocolo/bus_act [2]),
    .I4(\Prueba/Protocolo/bus_act [5]),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'h0800E0000408E000 ))
  \Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal12  (
    .I0(\Prueba/instance_name/dato_out [4]),
    .I1(\Prueba/instance_name/dato_out [5]),
    .I2(\Prueba/instance_name/dato_out [1]),
    .I3(\Prueba/instance_name/dato_out [2]),
    .I4(\Prueba/instance_name/dato_out [0]),
    .I5(\Prueba/instance_name/dato_out [3]),
    .O(\Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal11 )
  );
  LUT5 #(
    .INIT ( 32'h05020280 ))
  \Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal13  (
    .I0(\Prueba/instance_name/dato_out [1]),
    .I1(\Prueba/instance_name/dato_out [3]),
    .I2(\Prueba/instance_name/dato_out [4]),
    .I3(\Prueba/instance_name/dato_out [2]),
    .I4(\Prueba/instance_name/dato_out [0]),
    .O(\Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal12_203 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In1  (
    .I0(\Prueba/instance_name/dato_out [7]),
    .I1(\Prueba/instance_name/dato_out [6]),
    .I2(\Prueba/instance_name/dato_out [0]),
    .I3(\Prueba/instance_name/dato_out [2]),
    .I4(\Prueba/instance_name/dato_out [3]),
    .I5(\Prueba/instance_name/dato_out [4]),
    .O(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In1_204 )
  );
  LUT5 #(
    .INIT ( 32'h5D5C7570 ))
  \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In3  (
    .I0(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd2_126 ),
    .I1(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd1_32 ),
    .I2(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3_127 ),
    .I3(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In2_205 ),
    .I4(\Enlace_P1_P2/Captador/Veri_Si ),
    .O(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h55045500 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp103  (
    .I0(rst_IBUF_1),
    .I1(\Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>1 ),
    .I2(\Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o ),
    .I3(\Enlace_P1_P2/Captador/Salidas/Mmux_Temp10 ),
    .I4(\Enlace_P1_P2/Captador/Salidas/Mmux_Temp101_207 ),
    .O(\Enlace_P1_P2/C_Temp [4])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o1_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [7]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [6]),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o1  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [5]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [4]),
    .I2(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [3]),
    .I3(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [2]),
    .I4(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [1]),
    .I5(N5),
    .O(\Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Carro1_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [2]),
    .I1(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [7]),
    .I2(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [3]),
    .I3(rst_IBUF_1),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Carro1  (
    .I0(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [6]),
    .I1(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [1]),
    .I2(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [0]),
    .I3(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [5]),
    .I4(\Enlace_P1_P2/Captador/Registro_Ign/dato_out [4]),
    .I5(N7),
    .O(\Enlace_P1_P2/C_Carro )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Pres1_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [4]),
    .I1(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [7]),
    .I2(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [1]),
    .I3(rst_IBUF_1),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Pres1  (
    .I0(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [5]),
    .I1(N9),
    .I2(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [2]),
    .I3(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [0]),
    .I4(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [6]),
    .I5(\Enlace_P1_P2/Captador/Registro_Pre/dato_out [3]),
    .O(\Enlace_P1_P2/C_Presencia )
  );
  LUT5 #(
    .INIT ( 32'hA8FFA8A8 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<5>_SW0  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .I2(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .I3(\Enlace_P1_P2/Proyecto_1/Dec [1]),
    .I4(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFA220 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<5>  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Uni [2]),
    .I2(\Enlace_P1_P2/Proyecto_1/Uni [1]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0]),
    .I4(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .I5(N11),
    .O(Catodos_5_OBUF_9)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<4>_SW0  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Dec [0]),
    .I2(\Enlace_P1_P2/Proyecto_1/Dec [1]),
    .I3(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .I4(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .I5(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF202022A0 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<4>  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2_177 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Uni [3]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0]),
    .I3(\Enlace_P1_P2/Proyecto_1/Uni [2]),
    .I4(\Enlace_P1_P2/Proyecto_1/Uni [1]),
    .I5(N13),
    .O(Catodos_4_OBUF_10)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF0880 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<1>  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Uni [2]),
    .I2(\Enlace_P1_P2/Proyecto_1/Uni [1]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0]),
    .I4(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .I5(N15),
    .O(Catodos_1_OBUF_13)
  );
  LUT6 #(
    .INIT ( 64'h40404040FF404040 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<0>_SW0  (
    .I0(\Enlace_P1_P2/Proyecto_1/Dec [0]),
    .I1(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .I2(\Enlace_P1_P2/Proyecto_1/Dec [1]),
    .I3(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .I4(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .I5(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF0220 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<0>  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Uni [1]),
    .I2(\Enlace_P1_P2/Proyecto_1/Uni [2]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0]),
    .I4(N17),
    .I5(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .O(Catodos_0_OBUF_14)
  );
  LUT6 #(
    .INIT ( 64'h10FF101010101010 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>_SW0  (
    .I0(\Enlace_P1_P2/Proyecto_1/Dec [0]),
    .I1(\Enlace_P1_P2/Proyecto_1/Dec [1]),
    .I2(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .I3(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd2_47 ),
    .I4(\Enlace_P1_P2/Proyecto_1/Control/Est_act_FSM_FFd1_48 ),
    .I5(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAEAA ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 ),
    .I2(\Enlace_P1_P2/Proyecto_1/Uni [2]),
    .I3(\Enlace_P1_P2/Proyecto_1/Uni [1]),
    .I4(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0]),
    .I5(N19),
    .O(Catodos_2_OBUF_12)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Prueba/Protocolo/act_state_FSM_FFd1-In1_SW0  (
    .I0(\Prueba/Protocolo/filtro_act [6]),
    .I1(\Prueba/Protocolo/filtro_act [5]),
    .I2(\Prueba/Protocolo/filtro_act [4]),
    .I3(\Prueba/Protocolo/filtro_act [7]),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \Prueba/Protocolo/act_state_FSM_FFd1-In1  (
    .I0(\Prueba/Protocolo/ps2_act_192 ),
    .I1(\Prueba/Protocolo/filtro_act [0]),
    .I2(\Prueba/Protocolo/filtro_act [1]),
    .I3(\Prueba/Protocolo/filtro_act [3]),
    .I4(\Prueba/Protocolo/filtro_act [2]),
    .I5(N21),
    .O(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Prueba/Protocolo/_n0071_inv_SW0  (
    .I0(\Prueba/Protocolo/cont_act [2]),
    .I1(\Prueba/Protocolo/cont_act [1]),
    .I2(\Prueba/Protocolo/cont_act [0]),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \Prueba/Protocolo/Mmux_ps2_next11  (
    .I0(\Prueba/Protocolo/filtro_act [4]),
    .I1(\Prueba/Protocolo/filtro_act [5]),
    .I2(\Prueba/Protocolo/filtro_act [2]),
    .I3(\Prueba/Protocolo/filtro_act [3]),
    .I4(\Prueba/Protocolo/filtro_act [0]),
    .I5(\Prueba/Protocolo/filtro_act [1]),
    .O(\Prueba/Protocolo/Mmux_ps2_next1 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \Prueba/Protocolo/Mmux_ps2_next12  (
    .I0(\Prueba/Protocolo/filtro_act [4]),
    .I1(\Prueba/Protocolo/filtro_act [5]),
    .I2(\Prueba/Protocolo/filtro_act [2]),
    .I3(\Prueba/Protocolo/filtro_act [3]),
    .I4(\Prueba/Protocolo/filtro_act [0]),
    .I5(\Prueba/Protocolo/filtro_act [1]),
    .O(\Prueba/Protocolo/Mmux_ps2_next11_219 )
  );
  LUT5 #(
    .INIT ( 32'hEAE8AAA8 ))
  \Prueba/Protocolo/Mmux_ps2_next13  (
    .I0(\Prueba/Protocolo/ps2_act_192 ),
    .I1(\Prueba/Protocolo/filtro_act [6]),
    .I2(\Prueba/Protocolo/filtro_act [7]),
    .I3(\Prueba/Protocolo/Mmux_ps2_next1 ),
    .I4(\Prueba/Protocolo/Mmux_ps2_next11_219 ),
    .O(\Prueba/Protocolo/ps2_next )
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_1)
  );
  IBUF   EN_IBUF (
    .I(EN),
    .O(EN_IBUF_2)
  );
  IBUF   ps2d_IBUF (
    .I(ps2d),
    .O(ps2d_IBUF_3)
  );
  IBUF   ps2c_IBUF (
    .I(ps2c),
    .O(ps2c_IBUF_4)
  );
  OBUF   Alarma_Vent_1_OBUF (
    .I(\Enlace_P1_P2/Proyecto_1/Salidas/out [1]),
    .O(Alarma_Vent[1])
  );
  OBUF   Alarma_Vent_0_OBUF (
    .I(\Enlace_P1_P2/Proyecto_1/Salidas/out [0]),
    .O(Alarma_Vent[0])
  );
  OBUF   Catodos_7_OBUF (
    .I(Catodos_7_OBUF_7),
    .O(Catodos[7])
  );
  OBUF   Catodos_6_OBUF (
    .I(Catodos_6_OBUF_8),
    .O(Catodos[6])
  );
  OBUF   Catodos_5_OBUF (
    .I(Catodos_5_OBUF_9),
    .O(Catodos[5])
  );
  OBUF   Catodos_4_OBUF (
    .I(Catodos_4_OBUF_10),
    .O(Catodos[4])
  );
  OBUF   Catodos_3_OBUF (
    .I(Catodos_3_OBUF_11),
    .O(Catodos[3])
  );
  OBUF   Catodos_2_OBUF (
    .I(Catodos_2_OBUF_12),
    .O(Catodos[2])
  );
  OBUF   Catodos_1_OBUF (
    .I(Catodos_1_OBUF_13),
    .O(Catodos[1])
  );
  OBUF   Catodos_0_OBUF (
    .I(Catodos_0_OBUF_14),
    .O(Catodos[0])
  );
  OBUF   Anodos_3_OBUF (
    .I(Anodos_3_OBUF_15),
    .O(Anodos[3])
  );
  OBUF   Anodos_2_OBUF (
    .I(Anodos_2_OBUF_16),
    .O(Anodos[2])
  );
  OBUF   Anodos_1_OBUF (
    .I(Anodos_1_OBUF_17),
    .O(Anodos[1])
  );
  OBUF   Anodos_0_OBUF (
    .I(Anodos_0_OBUF_18),
    .O(Anodos[0])
  );
  OBUF   correct_OBUF (
    .I(\Prueba/Protocolo/bus_act [0]),
    .O(correct)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<1>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [1]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<1>_rt_240 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<2>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [2]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<2>_rt_241 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<3>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [3]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<3>_rt_242 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<4>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [4]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<4>_rt_243 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<5>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [5]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<5>_rt_244 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<6>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [6]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<6>_rt_245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<7>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [7]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<7>_rt_246 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<8>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [8]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<8>_rt_247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<9>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [9]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<9>_rt_248 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<10>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [10]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<10>_rt_249 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<11>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [11]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<11>_rt_250 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<12>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [12]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<12>_rt_251 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<13>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [13]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<13>_rt_252 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<14>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [14]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<14>_rt_253 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<15>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [15]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<15>_rt_254 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<16>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [16]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<16>_rt_255 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<17>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [17]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_cy<17>_rt_256 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<18>_rt  (
    .I0(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [18]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_xor<18>_rt_257 )
  );
  FDC   \Prueba/Toma_Dato/act_state  (
    .C(clk_BUFGP_0),
    .CLR(rst_IBUF_1),
    .D(\Prueba/Toma_Dato/act_state_rstpot_258 ),
    .Q(\Prueba/Toma_Dato/act_state_125 )
  );
  LUT5 #(
    .INIT ( 32'h8888888C ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp101  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .I1(\Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o ),
    .I2(\Enlace_P1_P2/Captador/Salidas/_n0059 [2]),
    .I3(\Enlace_P1_P2/Captador/Salidas/_n0059 [3]),
    .I4(\Enlace_P1_P2/Captador/Salidas/_n0059 [4]),
    .O(\Enlace_P1_P2/Captador/Salidas/Mmux_Temp10 )
  );
  LUT6 #(
    .INIT ( 64'h2426262224222622 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp102  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [0]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [1]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .I3(\Enlace_P1_P2/Captador/Salidas/_n0059 [2]),
    .I4(\Enlace_P1_P2/Captador/Salidas/_n0059 [3]),
    .I5(\Enlace_P1_P2/Captador/Salidas/_n0059 [4]),
    .O(\Enlace_P1_P2/Captador/Salidas/Mmux_Temp101_207 )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp61_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [0]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [1]),
    .I2(\Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>1 ),
    .O(N27)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp61_SW1  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [0]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [1]),
    .I2(\Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>1 ),
    .O(N28)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp81_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .I1(\Enlace_P1_P2/Captador/Salidas/_n0059 [2]),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'hB2BDB4BBB6B9B4BB ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp81_SW1  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [0]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [1]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .I3(\Enlace_P1_P2/Captador/Salidas/_n0059 [2]),
    .I4(\Enlace_P1_P2/Captador/Salidas/_n0059 [3]),
    .I5(\Enlace_P1_P2/Captador/Salidas/_n0059 [4]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'h1114 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp81_SW2  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .I1(\Enlace_P1_P2/Captador/Salidas/_n0059 [2]),
    .I2(\Enlace_P1_P2/Captador/Salidas/_n0059 [3]),
    .I3(\Enlace_P1_P2/Captador/Salidas/_n0059 [4]),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'h0001505104055455 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp81  (
    .I0(rst_IBUF_1),
    .I1(\Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>1 ),
    .I2(\Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o ),
    .I3(N35),
    .I4(N37),
    .I5(N36),
    .O(\Enlace_P1_P2/C_Temp [3])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Prueba/Protocolo/act_state_FSM_FFd1-In_SW0_SW0  (
    .I0(\Prueba/Protocolo/cont_act [3]),
    .I1(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \Prueba/Protocolo/act_state_FSM_FFd1-In  (
    .I0(\Prueba/Protocolo/cont_act [2]),
    .I1(\Prueba/Protocolo/cont_act [1]),
    .I2(\Prueba/Protocolo/cont_act [0]),
    .I3(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I4(N39),
    .I5(\Prueba/Protocolo/act_state_FSM_FFd1-In1_179 ),
    .O(\Prueba/Protocolo/act_state_FSM_FFd1-In_182 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal11_SW0  (
    .I0(rst_IBUF_1),
    .I1(\Prueba/instance_name/dato_out [7]),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'h0705000002000000 ))
  \Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal14  (
    .I0(\Prueba/instance_name/dato_out [6]),
    .I1(\Prueba/instance_name/dato_out [5]),
    .I2(N41),
    .I3(\Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal12_203 ),
    .I4(\Prueba/tick_data ),
    .I5(\Enlace_P1_P2/Captador/Validacion/Mmux_Reg_Sal11 ),
    .O(\Enlace_P1_P2/Captador/Veri_Si )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_n005321_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [0]),
    .I1(\Enlace_P1_P2/Captador/Registro_Dec/dato_out [1]),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'h4444141155550500 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp41  (
    .I0(rst_IBUF_1),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .I2(N43),
    .I3(\Enlace_P1_P2/Captador/Salidas/decenas[7]_GND_8_o_equal_23_o<7>1 ),
    .I4(\Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o ),
    .I5(\Enlace_P1_P2/Captador/Salidas/_n0059 [4]),
    .O(\Enlace_P1_P2/C_Temp [1])
  );
  LUT6 #(
    .INIT ( 64'h2622222222222222 ))
  \Prueba/Toma_Dato/act_state_rstpot  (
    .I0(\Prueba/Toma_Dato/act_state_125 ),
    .I1(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I2(N3),
    .I3(\Prueba/Protocolo/bus_act [6]),
    .I4(\Prueba/Protocolo/bus_act [7]),
    .I5(\Prueba/Protocolo/bus_act [8]),
    .O(\Prueba/Toma_Dato/act_state_rstpot_258 )
  );
  LUT6 #(
    .INIT ( 64'h0004000000000000 ))
  \Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In2  (
    .I0(rst_IBUF_1),
    .I1(\Prueba/Toma_Dato/act_state_125 ),
    .I2(\Prueba/instance_name/dato_out [5]),
    .I3(\Prueba/instance_name/dato_out [1]),
    .I4(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I5(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In1_204 ),
    .O(\Enlace_P1_P2/Captador/Control/act_state_FSM_FFd3-In2_205 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF8208 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<3>1  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [0]),
    .I2(\Enlace_P1_P2/Proyecto_1/Uni [1]),
    .I3(\Enlace_P1_P2/Proyecto_1/Uni [2]),
    .I4(N17),
    .I5(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .O(Catodos_3_OBUF_11)
  );
  LUT5 #(
    .INIT ( 32'hAAA22A8A ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>11  (
    .I0(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2_177 ),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I3(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .I4(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [1]),
    .O(\Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<2>1 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Enlace_P1_P2/Proyecto_1/Display/Mmux_catodo<1>_SW0  (
    .I0(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [4]),
    .I1(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [3]),
    .I2(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [2]),
    .I3(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .I4(\Enlace_P1_P2/Proyecto_1/Entradas/Temp [1]),
    .O(N15)
  );
  LUT5 #(
    .INIT ( 32'h00FA00CA ))
  \Prueba/Protocolo/_n0071_inv_rstpot  (
    .I0(EN_IBUF_2),
    .I1(\Prueba/Protocolo/cont_act [3]),
    .I2(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .I3(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I4(N25),
    .O(\Prueba/Protocolo/_n0071_inv_rstpot_267 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \Prueba/Protocolo/cont_act_3_dpot  (
    .I0(\Prueba/Protocolo/cont_act [3]),
    .I1(\Prueba/Protocolo/Mcount_cont_act3 ),
    .I2(\Prueba/Protocolo/_n0071_inv_rstpot_267 ),
    .O(\Prueba/Protocolo/cont_act_3_dpot_271 )
  );
  LUT4 #(
    .INIT ( 16'hE6EE ))
  \Prueba/Protocolo/cont_act_0_dpot  (
    .I0(\Prueba/Protocolo/_n0071_inv_rstpot_267 ),
    .I1(\Prueba/Protocolo/cont_act [0]),
    .I2(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I3(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .O(\Prueba/Protocolo/cont_act_0_dpot_268 )
  );
  LUT5 #(
    .INIT ( 32'h0090AAAA ))
  \Prueba/Protocolo/cont_act_1_dpot  (
    .I0(\Prueba/Protocolo/cont_act [1]),
    .I1(\Prueba/Protocolo/cont_act [0]),
    .I2(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .I3(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I4(\Prueba/Protocolo/_n0071_inv_rstpot_267 ),
    .O(\Prueba/Protocolo/cont_act_1_dpot_269 )
  );
  LUT6 #(
    .INIT ( 64'h0000A900AAAAAAAA ))
  \Prueba/Protocolo/cont_act_2_dpot  (
    .I0(\Prueba/Protocolo/cont_act [2]),
    .I1(\Prueba/Protocolo/cont_act [1]),
    .I2(\Prueba/Protocolo/cont_act [0]),
    .I3(\Prueba/Protocolo/act_state_FSM_FFd2_181 ),
    .I4(\Prueba/Protocolo/act_state_FSM_FFd1_58 ),
    .I5(\Prueba/Protocolo/_n0071_inv_rstpot_267 ),
    .O(\Prueba/Protocolo/cont_act_2_dpot_270 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_lut<0>_INV_0  (
    .I(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/cont [0]),
    .O(\Enlace_P1_P2/Proyecto_1/CLOCK_modif/Mcount_cont_lut [0])
  );
  INV   \Enlace_P1_P2/Proyecto_1/Display/Est_act_anodo<3>1_INV_0  (
    .I(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd1_175 ),
    .O(Anodos_3_OBUF_15)
  );
  INV   \Enlace_P1_P2/Proyecto_1/Display/Est_act_anodo<2>1_INV_0  (
    .I(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd2_177 ),
    .O(Anodos_2_OBUF_16)
  );
  INV   \Enlace_P1_P2/Proyecto_1/Display/Est_act_anodo<1>1_INV_0  (
    .I(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd3_178 ),
    .O(Anodos_1_OBUF_17)
  );
  INV   \Enlace_P1_P2/Proyecto_1/Display/Est_act_anodo<0>1_INV_0  (
    .I(\Enlace_P1_P2/Proyecto_1/Display/Est_act_FSM_FFd4_176 ),
    .O(Anodos_0_OBUF_18)
  );
  MUXF7   \Enlace_P1_P2/Captador/Salidas/Mmux_Temp62  (
    .I0(N45),
    .I1(N46),
    .S(N27),
    .O(\Enlace_P1_P2/C_Temp [2])
  );
  LUT6 #(
    .INIT ( 64'h5555555541414111 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp62_F  (
    .I0(rst_IBUF_1),
    .I1(\Enlace_P1_P2/Captador/Salidas/_n0059 [3]),
    .I2(\Enlace_P1_P2/Captador/Salidas/_n0059 [4]),
    .I3(\Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o ),
    .I4(N28),
    .I5(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'h4541404444414144 ))
  \Enlace_P1_P2/Captador/Salidas/Mmux_Temp62_G  (
    .I0(rst_IBUF_1),
    .I1(\Enlace_P1_P2/Captador/Salidas/GND_8_o_decenas[7]_LessThan_21_o ),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [7]),
    .I3(\Enlace_P1_P2/Captador/Salidas/_n0059 [4]),
    .I4(\Enlace_P1_P2/Captador/Salidas/_n0059 [3]),
    .I5(N28),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n00591_G  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [5]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [4]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [2]),
    .I3(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [3]),
    .I4(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [0]),
    .I5(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [1]),
    .O(\Enlace_P1_P2/Captador/Salidas_N10 )
  );
  LUT6 #(
    .INIT ( 64'h0008800000280000 ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n00591_F  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [2]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [5]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [4]),
    .I3(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [0]),
    .I4(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [1]),
    .I5(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [3]),
    .O(\Enlace_P1_P2/Captador/Salidas_N9 )
  );
  MUXF7   \Enlace_P1_P2/Captador/Salidas_Mram__n00591  (
    .I0(\Enlace_P1_P2/Captador/Salidas_N9 ),
    .I1(\Enlace_P1_P2/Captador/Salidas_N10 ),
    .S(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [6]),
    .O(\Enlace_P1_P2/Captador/Salidas/_n0059 [5])
  );
  LUT6 #(
    .INIT ( 64'h0000000040020000 ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n00593  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [6]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [5]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [4]),
    .I3(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [3]),
    .I4(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [2]),
    .I5(\Enlace_P1_P2/Captador/Salidas_N7 ),
    .O(\Enlace_P1_P2/Captador/Salidas/_n0059 [2])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n00593_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [0]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [1]),
    .O(\Enlace_P1_P2/Captador/Salidas_N7 )
  );
  LUT6 #(
    .INIT ( 64'h0040000000004000 ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n00592  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [6]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [5]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [2]),
    .I3(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [1]),
    .I4(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [0]),
    .I5(\Enlace_P1_P2/Captador/Salidas_N5 ),
    .O(\Enlace_P1_P2/Captador/Salidas/_n0059 [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n00592_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [4]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [3]),
    .O(\Enlace_P1_P2/Captador/Salidas_N5 )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n005911  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [6]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [2]),
    .I2(\Enlace_P1_P2/Captador/Salidas_N3 ),
    .O(\Enlace_P1_P2/Captador/Salidas/_n0059 [4])
  );
  LUT5 #(
    .INIT ( 32'hF79FFFDF ))
  \Enlace_P1_P2/Captador/Salidas_Mram__n005911_SW0  (
    .I0(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [5]),
    .I1(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [3]),
    .I2(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [1]),
    .I3(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [0]),
    .I4(\Enlace_P1_P2/Captador/Registro_Uni/dato_out [4]),
    .O(\Enlace_P1_P2/Captador/Salidas_N3 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

