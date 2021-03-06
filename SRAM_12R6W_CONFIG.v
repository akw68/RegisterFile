/*******************************************************************************
#                        NORTH CAROLINA STATE UNIVERSITY
#
#                               FabScalar Project
#
# FabScalar Copyright (c) 2007-2011 by Niket K. Choudhary, Salil Wadhavkar,
# and Eric Rotenberg.  All Rights Reserved.
#
# This is a beta-release version.  It must not be redistributed at this time.
#
# Purpose: 
# Author:  FabGen
*******************************************************************************/

`timescale 1ns/100ps

module SRAM_12R6W_CONFIG(
	clk,
	reset,

	addr0_i,
	addr1_i,
	addr2_i,
	addr3_i,
	addr4_i,
	addr5_i,
	addr6_i,
	addr7_i,
	addr8_i,
	addr9_i,
	addr10_i,
	addr11_i,
	addr0wr_i,
	addr1wr_i,
	addr2wr_i,
	addr3wr_i,
	addr4wr_i,
	addr5wr_i,
	we0_i,
	we1_i,
	we2_i,
	we3_i,
	we4_i,
	we5_i,
	data0wr_i,
	data1wr_i,
	data2wr_i,
	data3wr_i,
	data4wr_i,
	data5wr_i,

decoded_addr0_o,
decoded_addr1_o,
decoded_addr2_o,
decoded_addr3_o,
decoded_addr4_o,
decoded_addr5_o,
decoded_addr6_o,
decoded_addr7_o,
decoded_addr8_o,
decoded_addr9_o,
decoded_addr10_o,
decoded_addr11_o,
decoded_addr0wr_o,
decoded_addr1wr_o,
decoded_addr2wr_o,
decoded_addr3wr_o,
decoded_addr4wr_o,
decoded_addr5wr_o,
	data0_o,
	data1_o,
	data2_o,
	data3_o,
	data4_o,
	data5_o,
	data6_o,
	data7_o,
	data8_o,
	data9_o,
	data10_o,
	data11_o
);

/* Parameters */
parameter SRAM_DEPTH = 16;
parameter SRAM_INDEX = 4;
parameter SRAM_WIDTH = 32;

input clk;
input reset;
/* The SRAM reg */
	input [SRAM_INDEX-1:0] addr0_i;
	input [SRAM_INDEX-1:0] addr1_i;
	input [SRAM_INDEX-1:0] addr2_i;
	input [SRAM_INDEX-1:0] addr3_i;
	input [SRAM_INDEX-1:0] addr4_i;
	input [SRAM_INDEX-1:0] addr5_i;
	input [SRAM_INDEX-1:0] addr6_i;
	input [SRAM_INDEX-1:0] addr7_i;
	input [SRAM_INDEX-1:0] addr8_i;
	input [SRAM_INDEX-1:0] addr9_i;
	input [SRAM_INDEX-1:0] addr10_i;
	input [SRAM_INDEX-1:0] addr11_i;
	input [SRAM_INDEX-1:0] addr0wr_i;
	input [SRAM_INDEX-1:0] addr1wr_i;
	input [SRAM_INDEX-1:0] addr2wr_i;
	input [SRAM_INDEX-1:0] addr3wr_i;
	input [SRAM_INDEX-1:0] addr4wr_i;
	input [SRAM_INDEX-1:0] addr5wr_i;
	input we0_i;
	input we1_i;
	input we2_i;
	input we3_i;
	input we4_i;
	input we5_i;
	input [SRAM_WIDTH-1:0] data0wr_i;
	input [SRAM_WIDTH-1:0] data1wr_i;
	input [SRAM_WIDTH-1:0] data2wr_i;
	input [SRAM_WIDTH-1:0] data3wr_i;
	input [SRAM_WIDTH-1:0] data4wr_i;
	input [SRAM_WIDTH-1:0] data5wr_i;

output [SRAM_DEPTH-1:0] decoded_addr0_o;
output [SRAM_DEPTH-1:0] decoded_addr1_o;
output [SRAM_DEPTH-1:0] decoded_addr2_o;
output [SRAM_DEPTH-1:0] decoded_addr3_o;
output [SRAM_DEPTH-1:0] decoded_addr4_o;
output [SRAM_DEPTH-1:0] decoded_addr5_o;
output [SRAM_DEPTH-1:0] decoded_addr6_o;
output [SRAM_DEPTH-1:0] decoded_addr7_o;
output [SRAM_DEPTH-1:0] decoded_addr8_o;
output [SRAM_DEPTH-1:0] decoded_addr9_o;
output [SRAM_DEPTH-1:0] decoded_addr10_o;
output [SRAM_DEPTH-1:0] decoded_addr11_o;
output [SRAM_DEPTH-1:0] decoded_addr0wr_o;
output [SRAM_DEPTH-1:0] decoded_addr1wr_o;
output [SRAM_DEPTH-1:0] decoded_addr2wr_o;
output [SRAM_DEPTH-1:0] decoded_addr3wr_o;
output [SRAM_DEPTH-1:0] decoded_addr4wr_o;
output [SRAM_DEPTH-1:0] decoded_addr5wr_o;
	output [SRAM_WIDTH-1:0] data0_o;
	output [SRAM_WIDTH-1:0] data1_o;
	output [SRAM_WIDTH-1:0] data2_o;
	output [SRAM_WIDTH-1:0] data3_o;
	output [SRAM_WIDTH-1:0] data4_o;
	output [SRAM_WIDTH-1:0] data5_o;
	output [SRAM_WIDTH-1:0] data6_o;
	output [SRAM_WIDTH-1:0] data7_o;
	output [SRAM_WIDTH-1:0] data8_o;
	output [SRAM_WIDTH-1:0] data9_o;
	output [SRAM_WIDTH-1:0] data10_o;
	output [SRAM_WIDTH-1:0] data11_o;
	reg [SRAM_WIDTH-1:0] sram [SRAM_DEPTH-1:0];
assign data0_o = sram[addr0_i];
assign decoded_addr0_o = 1 << addr0_i;
assign data1_o = sram[addr1_i];
assign decoded_addr1_o = 1 << addr1_i;
assign data2_o = sram[addr2_i];
assign decoded_addr2_o = 1 << addr2_i;
assign data3_o = sram[addr3_i];
assign decoded_addr3_o = 1 << addr3_i;
assign data4_o = sram[addr4_i];
assign decoded_addr4_o = 1 << addr4_i;
assign data5_o = sram[addr5_i];
assign decoded_addr5_o = 1 << addr5_i;
assign data6_o = sram[addr6_i];
assign decoded_addr6_o = 1 << addr6_i;
assign data7_o = sram[addr7_i];
assign decoded_addr7_o = 1 << addr7_i;
assign data8_o = sram[addr8_i];
assign decoded_addr8_o = 1 << addr8_i;
assign data9_o = sram[addr9_i];
assign decoded_addr9_o = 1 << addr9_i;
assign data10_o = sram[addr10_i];
assign decoded_addr10_o = 1 << addr10_i;
assign data11_o = sram[addr11_i];
assign decoded_addr11_o = 1 << addr11_i;
assign decoded_addr0wr_o = we0_i << addr0wr_i;
assign decoded_addr1wr_o = we1_i << addr1wr_i;
assign decoded_addr2wr_o = we2_i << addr2wr_i;
assign decoded_addr3wr_o = we3_i << addr3wr_i;
assign decoded_addr4wr_o = we4_i << addr4wr_i;
assign decoded_addr5wr_o = we5_i << addr5wr_i;
integer i,j;

/* Write operation */
always @(posedge clk)
begin

	//if(reset == 1'b1)
	//begin
	//	for(i=34; i<SRAM_DEPTH; i=i+1)
	//	begin
	//		sram[i] <= 0;
	//	end
	//end
	//else
	//begin
		if(we0_i == 1'b1)
		begin
			sram[addr0wr_i] <= data0wr_i;
		end

		if(we1_i == 1'b1)
		begin
			sram[addr1wr_i] <= data1wr_i;
		end

		if(we2_i == 1'b1)
		begin
			sram[addr2wr_i] <= data2wr_i;
		end

		if(we3_i == 1'b1)
		begin
			sram[addr3wr_i] <= data3wr_i;
		end

		if(we4_i == 1'b1)
		begin
			sram[addr4wr_i] <= data4wr_i;
		end

		if(we5_i == 1'b1)
		begin
			sram[addr5wr_i] <= data5wr_i;
		end

	//end
end

endmodule


