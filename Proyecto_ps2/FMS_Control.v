`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Costa Rica
// Engineer: Ignacio Fernndez Garita, Daniel Zamora Umaña
// 
// Create Date:    20:16:16 02/23/2015 
// Design Name: 
// Module Name:    FMS_Control 
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
module FMS_Control(input wire act_0,
		input wire clk,
		input wire rst,
		output wire EN_out,
		output wire EN_in,
		output reg [1:0] Est
    );
//BODY
localparam State_0 = 2'd0, 
			  State_1 = 2'd1, 
			  State_2 = 2'd2,
			  State_3 = 2'd3;

reg [1:0] Est_act;
reg [1:0] Est_sig;

//Salidas
assign EN_out = (Est_act == State_3);
assign EN_in = (Est_act == State_1);

always @ *
begin
	Est = 2'b00;
	case (Est_act)
		State_1: begin Est = 2'b01; end
		State_2: begin Est = 2'b10; end
		State_3: begin Est = 2'b11; end
	endcase
end

//Fin de declaracion de salidas

//Porceso de la maquina

always @ (posedge clk or posedge rst)
begin
	if (rst) Est_act <= State_0;
	else Est_act <= Est_sig;
end

//Declaraciones de Estado siguiente

always @ *
begin
	Est_sig = Est_act;
	case (Est_act)
	
		State_0: begin 
			if (act_0) Est_sig = State_1;
		end
		
		State_1: begin
			 Est_sig = State_2;
		end
		
		State_2: begin
			Est_sig = State_3;
		end
		
		State_3: begin Est_sig = State_1; end

	endcase
end

endmodule
