`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:48 03/09/2015 
// Design Name: 
// Module Name:    Prueb_Teclado 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Prueb_Teclado(
		input clk,
		input rst,
		input ps2d,
		input ps2c,
		input EN,
		output [7:0] code,
		output Tick,
		output correct
    );

wire tick_done;
wire tick_data;
wire [7:0] dato; 

Get_Code_Mod Toma_Dato (
    .clk(clk), 
    .rst(rst), 
    .code(dato), 
    .tick_done(tick_done), 
    .tick_data(tick_data),
	 .tick_data2(Tick)
    );

Protocolo_PS2 Protocolo (
    .clk(clk), 
    .rst(rst), 
	 .EN(EN),
    .data_in(ps2d), 
    .ps2_c(ps2c),  
    .done_tick(tick_done), 
    .data_out(dato), 
    .correct(correct)
    );

Reg_Data instance_name (
    .dato(dato), 
    .EN(tick_data), 
    .clk(clk), 
    .rst(rst), 
    .dato_out(code)
    );
	 
endmodule
