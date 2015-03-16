`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Costa Rica
// Engineer: Ignacio Fernndez Garita, Daniel Zamora Umaña
// 
// Create Date:    21:50:43 02/23/2015 
// Design Name: 
// Module Name:    FMS_Display 
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
module FMS_Display(input wire clk,
		input wire rst,
		input wire [1:0] est,
		input wire [4:0] uni,
		input wire [1:0] dec,
		output reg [3:0] anodo,
		output reg [7:0] catodo
		
    );
//body	 
localparam State_0 = 2'd0,    //se define los estados para la maquina de estados 
			  State_1 = 2'd1, 	//del display 7 segmentos
			  State_2 = 2'd2,
			  State_3 = 2'd3;

reg [1:0] Est_act;
reg [1:0] Est_sig;

always @ *
begin
	case (Est_act)
		State_0: begin
			anodo <= 4'b1110;
			case(est)      // en el primer display se despliega el estado de la maquina
			2'b00 : catodo = 8'b11000000;
			2'b01 : catodo = 8'b11111001;   //se desplegaran 3 estados de la maquina ademas
			2'b10 : catodo = 8'b10100100;   // del estado 0 cuando el sistema esta en reposo
			2'b11 : catodo = 8'b10110000;
			default : catodo = 8'b10000000;
			endcase
		end
		State_1: begin       //en el segundo display se despliega una linea
			anodo <= 4'b1101;
			 catodo=8'b10111111;
		end
		
		State_2: begin 
			anodo <= 4'b1011;      // en el tercer display se despliega las unidades de temperatura
			case(uni)
			5'b0000 : catodo = 8'b11000000;
			5'b0001 : catodo = 8'b11111001;
			5'b0010 : catodo = 8'b10100100;    // numeros del 0 al 9 deacuerdo a la temperatura
			5'b0011 : catodo = 8'b10110000;
			5'b0100 : catodo = 8'b10011001;
			5'b0101 : catodo = 8'b10010010;
			5'b0110 : catodo = 8'b10000010;
			5'b0111 : catodo = 8'b11111000;
			5'b1000 : catodo = 8'b10000000;
			5'b1001 : catodo = 8'b10010000;
			default : catodo = 8'b10000000;
			endcase
		end
		
		State_3: begin
			anodo <= 4'b0111;        //en el cuarto display se despliega las decenas de temperatura
			case(dec)
			2'b00 : catodo = 8'b10100100;   //se toma como base la temperatura 20*C
			2'b01 : catodo = 8'b10110000;	  
			2'b10 : catodo = 8'b10011001;
			2'b11 : catodo = 8'b10010010;
			endcase
		end
		
	endcase
end


always @ (posedge clk, posedge rst)     //FSM para el display
begin
	if (rst) Est_act <= State_0;  //posiciona la maquina en 0 cuando hay rst
	else Est_act <= Est_sig;      //hace el conteo de estado
end

always @ *
begin
	Est_sig = Est_act;          
	case (Est_act)
	
		State_0: begin        //se asignan los estados constantes antes declarados
			Est_sig = State_1;    //al estado siguiente para realizar la cuenta
		end
		
		State_1: begin
			Est_sig = State_2;
		end
		
		State_2: begin
			Est_sig = State_3;
		end
		
		State_3: begin 
			Est_sig = State_0; 
		end

	endcase
end

endmodule


