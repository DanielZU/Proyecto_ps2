`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Costa Rica
// Engineer: Ignacio Fernndez Garita, Daniel Zamora Umaña
// 
// Create Date:    18:39:14 02/23/2015 
// Design Name: 
// Module Name:    Reg_Out 
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
module Reg_Out(input wire [1:0] LOG,
	input wire EN,
	input wire rst,
	input wire clk,
	output reg [1:0] out
    );
//BODY	 
always @ (posedge clk or posedge rst)
begin
	if (rst) begin
		out <= 2'b0;    //habilitador para las salidas, si hay rst no se activa ninguna salida.
	end
	else if (EN) begin  //sino se habilita la salida deacuerdo a la logica
		out <= LOG;
	end
end

endmodule
