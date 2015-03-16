`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Costa Rica
// Engineer: Ignacio Fernndez Garita, Daniel Zamora Umaña
// 
// Create Date:    15:25:25 02/26/2015 
// Design Name: 
// Module Name:    Clock_Contador 
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
module Clock_Contador(
    input wire clk,
	 input wire rst,
    output wire clk_mod,
	 output wire clk_control
    );
//body
reg [17:0] cont;   //inicializa una variable de 27 bits de registro


always @ (posedge clk, posedge rst)   // crea el contador con el clk interno de la fpga
begin
	if (rst) begin cont<=0; end
	else begin cont<=cont+1'b1; end
end

assign clk_mod=cont[16];          //toma las dos frecuencias seleccionadas para la operacion
assign clk_control = cont[17];    // del sistema

endmodule
