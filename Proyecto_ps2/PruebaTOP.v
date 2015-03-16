`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:43:07 03/14/2015
// Design Name:   Digitales2_TopMod
// Module Name:   /home/daniel/Proyecto_2_Digitales/PruebaTOP.v
// Project Name:  Proyecto_2_Digitales
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Digitales2_TopMod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PruebaTOP;

	// Inputs
	reg clk;
	reg rst;
	reg ps2d;
	reg ps2c;
	reg EN;
	// Outputs
	wire correct;
	wire [1:0] Alarma_Vent;
	wire [7:0] Catodos;
	wire [3:0] Anodos;

	// Instantiate the Unit Under Test (UUT)
	Digitales2_TopMod uut (
		.clk(clk), 
		.rst(rst),
		.EN(EN),
		.ps2d(ps2d), 
		.ps2c(ps2c), 
		.correct(correct), 
		.Alarma_Vent(Alarma_Vent), 
		.Catodos(Catodos), 
		.Anodos(Anodos)
	);

initial forever #10 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		ps2d = 1;
		ps2c = 1;
		EN=0;
	
	
		
	repeat(10) @(posedge clk)
		rst=0;
	
	#100000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	#1100000 EN=0;
	#1000000 EN=1;
	
	
	
	end
	
	
	initial forever #50000 ps2c=~ps2c;
	initial begin
	
	//w
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		//3
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		//5
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		//P
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		//N
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		//ENTER
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;
		
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b1;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b1;
		@(posedge ps2c) ps2d =1'b0;
		@(posedge ps2c) ps2d=1'b0;
		@(posedge ps2c) ps2d =1'b0;
		repeat (10) @(posedge ps2c) ps2d =1'b1;

	end
      
endmodule

