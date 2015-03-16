`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Costa Rica
// Engineer: Ignacio Fernndez Garita, Daniel Zamora Umaña
// 
// Create Date:    18:37:41 02/23/2015 
// Design Name: 
// Module Name:    Reg_In 
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
module Reg_In(input wire [4:0] T,
		input wire C,
		input wire P,
		input wire EN,
		input wire rst,
		input wire clk,
		output reg [4:0] Temp,
		output reg Ca,
		output reg Pre
    );
//BODY
always @(posedge clk or posedge rst)
begin
	if (rst) begin     //si se activa el rst todas las entradas se inicializan
		Ca <= 1'b0;
		Temp <= 5'b0;
		Pre <= 1'b0;
	end
	else if (EN) begin    //sino el enable de la maquina de estados activa la lectura de
		Ca <= C;           //las diferentes entradas
		Temp <= T;
		Pre <= P;
	end
end

endmodule
