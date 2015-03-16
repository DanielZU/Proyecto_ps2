`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:55 03/12/2015 
// Design Name: 
// Module Name:    Enable_Registros 
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
module Enable_Registros(
    input [2:0] Estado,
    input clk,
    input rst,
    output [3:0] Registros,
    output active
    );

always @ *
	begin
		registros = 4'b0000;
		active = 1'b0;	
		case (Estado)
			3'b000: begin 
				registros = 4'b0000;
				active = 1'b0;	
				end
			3'b001: begin 
				registros = 4'b0001;
				active = 1'b0;	
				end
			3'b010: begin 
				registros = 4'b0010;
				active = 1'b0;	
				end
			3'b011: begin 
				registros = 4'b0100;
				active = 1'b0;	
				end
			3'b100: begin 
				registros = 4'b1000;
				active = 1'b1;	
				end
			3'b101: begin 
				registros = 4'b0000;
				active = 1'b1;	
				end
		endcase
	end

endmodule
