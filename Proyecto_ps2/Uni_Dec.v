`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Costa Rica
// Engineer: Ignacio Fernndez Garita, Daniel Zamora Umaña
// 
// Create Date:    17:27:24 02/23/2015 
// Design Name: 
// Module Name:    Unidades 
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
module Uni_Dec(input wire [4:0] temp,
		output reg [4:0] Uni,
		output reg [1:0] Dec
    );
//body
always @ *
begin
	Uni = (temp<5'b01010) ? temp : (temp<5'b10100) ? (temp-5'b01010) :
		(temp<5'b11110) ? (temp-5'b10100) : (temp-5'b11110) ;
		//se define las unidades deacuerdo al numero de temperatura y la resta de decenas
	Dec = (temp<5'b01010) ? 2'b00 : (temp<5'b10100) ? 2'b01 :
		(temp<5'b11110) ? 2'b10 : 2'b11 ;   //define decenas iniciando en 20 como temperatura minima
end
endmodule