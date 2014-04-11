////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : reg9B.vf
// /___/   /\     Timestamp : 01/31/2014 04:33:14
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w C:/Xilinx/10.1/ISE/ISEexamples/mini_IDS3/mini_IDS3/reg9B.sch reg9B.vf
//Design Name: reg9B
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD16CE_HXILINX_reg9B(Q, C, CE, CLR, D);

   
   output [15:0]      Q;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [15:0]      D;
   
   reg    [15:0]      Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 16'b0000_0000_0000_0000;
	else if (CE)
          Q <= D;
     end
   
   
endmodule
`timescale 100 ps / 10 ps

module FD8CE_HXILINX_reg9B(Q, C, CE, CLR, D);

   
   output [7:0]       Q;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
          Q <= D;
     end
   
   
endmodule
`timescale 1ns / 1ps

module reg9B(ce, 
             clk, 
             clr, 
             d, 
             q);

    input ce;
    input clk;
    input clr;
    input [71:0] d;
   output [71:0] q;
   
   
   FD8CE_HXILINX_reg9B XLXI_1 (.C(clk), 
                               .CE(ce), 
                               .CLR(clr), 
                               .D(d[71:64]), 
                               .Q(q[71:64]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   FD16CE_HXILINX_reg9B XLXI_7 (.C(clk), 
                                .CE(ce), 
                                .CLR(clr), 
                                .D(d[63:48]), 
                                .Q(q[63:48]));
   // synthesis attribute HU_SET of XLXI_7 is "XLXI_7_1"
   FD16CE_HXILINX_reg9B XLXI_12 (.C(clk), 
                                 .CE(ce), 
                                 .CLR(clr), 
                                 .D(d[47:32]), 
                                 .Q(q[47:32]));
   // synthesis attribute HU_SET of XLXI_12 is "XLXI_12_2"
   FD16CE_HXILINX_reg9B XLXI_13 (.C(clk), 
                                 .CE(ce), 
                                 .CLR(clr), 
                                 .D(d[31:16]), 
                                 .Q(q[31:16]));
   // synthesis attribute HU_SET of XLXI_13 is "XLXI_13_3"
   FD16CE_HXILINX_reg9B XLXI_14 (.C(clk), 
                                 .CE(ce), 
                                 .CLR(clr), 
                                 .D(d[15:0]), 
                                 .Q(q[15:0]));
   // synthesis attribute HU_SET of XLXI_14 is "XLXI_14_4"
endmodule
