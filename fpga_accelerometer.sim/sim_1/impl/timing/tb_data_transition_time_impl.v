// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Apr 19 18:46:20 2018
// Host        : UIAS207788S running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/matsg17/Desktop/ele112/fpga_accelerometer/fpga_accelerometer.sim/sim_1/impl/timing/tb_data_transition_time_impl.v
// Design      : spi_master
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module counter
   (D,
    out,
    i_start_IBUF,
    clk_BUFG,
    w_load_shift);
  output [0:0]D;
  input [2:0]out;
  input i_start_IBUF;
  input clk_BUFG;
  input w_load_shift;

  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire clk_BUFG;
  wire i_start_IBUF;
  wire [2:0]out;
  wire [7:0]plusOp__0;
  wire \w_counter[7]_i_2_n_0 ;
  wire [7:0]w_counter_reg__0;
  wire w_load_shift;

  LUT6 #(
    .INIT(64'hFF01FF010F0F0FFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(out[0]),
        .I3(out[1]),
        .I4(i_start_IBUF),
        .I5(out[2]),
        .O(D));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(w_counter_reg__0[2]),
        .I1(w_counter_reg__0[3]),
        .I2(w_counter_reg__0[4]),
        .I3(w_counter_reg__0[6]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(w_counter_reg__0[7]),
        .I1(w_counter_reg__0[1]),
        .I2(w_counter_reg__0[0]),
        .I3(w_counter_reg__0[5]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_counter[0]_i_1 
       (.I0(w_counter_reg__0[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \w_counter[1]_i_1 
       (.I0(w_counter_reg__0[0]),
        .I1(w_counter_reg__0[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_counter[2]_i_1 
       (.I0(w_counter_reg__0[0]),
        .I1(w_counter_reg__0[1]),
        .I2(w_counter_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_counter[3]_i_1 
       (.I0(w_counter_reg__0[1]),
        .I1(w_counter_reg__0[0]),
        .I2(w_counter_reg__0[2]),
        .I3(w_counter_reg__0[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_counter[4]_i_1 
       (.I0(w_counter_reg__0[2]),
        .I1(w_counter_reg__0[0]),
        .I2(w_counter_reg__0[1]),
        .I3(w_counter_reg__0[3]),
        .I4(w_counter_reg__0[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \w_counter[5]_i_1 
       (.I0(w_counter_reg__0[3]),
        .I1(w_counter_reg__0[1]),
        .I2(w_counter_reg__0[0]),
        .I3(w_counter_reg__0[2]),
        .I4(w_counter_reg__0[4]),
        .I5(w_counter_reg__0[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \w_counter[6]_i_1 
       (.I0(\w_counter[7]_i_2_n_0 ),
        .I1(w_counter_reg__0[6]),
        .O(plusOp__0[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \w_counter[7]_i_1 
       (.I0(\w_counter[7]_i_2_n_0 ),
        .I1(w_counter_reg__0[6]),
        .I2(w_counter_reg__0[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \w_counter[7]_i_2 
       (.I0(w_counter_reg__0[5]),
        .I1(w_counter_reg__0[3]),
        .I2(w_counter_reg__0[1]),
        .I3(w_counter_reg__0[0]),
        .I4(w_counter_reg__0[2]),
        .I5(w_counter_reg__0[4]),
        .O(\w_counter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[0]),
        .Q(w_counter_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[1]),
        .Q(w_counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[2]),
        .Q(w_counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[3] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[3]),
        .Q(w_counter_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[4] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[4]),
        .Q(w_counter_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[5] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[5]),
        .Q(w_counter_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[6] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[6]),
        .Q(w_counter_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[7] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[7]),
        .Q(w_counter_reg__0[7]));
endmodule

module prescaler
   (w_gated_sclk_reg,
    out,
    o_slave_select_OBUF,
    clk,
    CLK);
  output w_gated_sclk_reg;
  output [0:0]out;
  input o_slave_select_OBUF;
  input clk;
  input CLK;

  wire CLK;
  wire clk;
  wire o_slave_select_OBUF;
  wire [0:0]out;
  wire [4:0]plusOp;
  wire \w_counter_reg_n_0_[0] ;
  wire \w_counter_reg_n_0_[1] ;
  wire \w_counter_reg_n_0_[2] ;
  wire \w_counter_reg_n_0_[3] ;
  wire w_gated_sclk_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \w_counter[0]_i_1 
       (.I0(\w_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_counter[1]_i_1 
       (.I0(\w_counter_reg_n_0_[0] ),
        .I1(\w_counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_counter[2]_i_1 
       (.I0(\w_counter_reg_n_0_[0] ),
        .I1(\w_counter_reg_n_0_[1] ),
        .I2(\w_counter_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_counter[3]_i_1 
       (.I0(\w_counter_reg_n_0_[1] ),
        .I1(\w_counter_reg_n_0_[0] ),
        .I2(\w_counter_reg_n_0_[2] ),
        .I3(\w_counter_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_counter[4]_i_1 
       (.I0(\w_counter_reg_n_0_[2] ),
        .I1(\w_counter_reg_n_0_[0] ),
        .I2(\w_counter_reg_n_0_[1] ),
        .I3(\w_counter_reg_n_0_[3] ),
        .I4(out),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \w_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\w_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\w_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\w_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\w_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE4)) 
    w_gated_sclk_i_1
       (.I0(o_slave_select_OBUF),
        .I1(out),
        .I2(clk),
        .O(w_gated_sclk_reg));
endmodule

module shiftlne
   (w_load_shift,
    o_mosi_OBUF,
    D,
    clk_BUFG,
    w_miso_data,
    out);
  output w_load_shift;
  output o_mosi_OBUF;
  output [15:0]D;
  input clk_BUFG;
  input w_miso_data;
  input [2:0]out;

  wire [15:0]D;
  wire clk_BUFG;
  wire \io_shift_register[59]_i_1_n_0 ;
  wire \io_shift_register_reg[30]_srl31_shiftlne_component_io_shift_register_reg_c_29_n_0 ;
  wire \io_shift_register_reg[31]_shiftlne_component_io_shift_register_reg_c_30_n_0 ;
  wire \io_shift_register_reg[53]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ;
  wire \io_shift_register_reg[54]_shiftlne_component_io_shift_register_reg_c_1_n_0 ;
  wire \io_shift_register_reg[61]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ;
  wire \io_shift_register_reg[62]_shiftlne_component_io_shift_register_reg_c_1_n_0 ;
  wire io_shift_register_reg_c_0_n_0;
  wire io_shift_register_reg_c_10_n_0;
  wire io_shift_register_reg_c_11_n_0;
  wire io_shift_register_reg_c_12_n_0;
  wire io_shift_register_reg_c_13_n_0;
  wire io_shift_register_reg_c_14_n_0;
  wire io_shift_register_reg_c_15_n_0;
  wire io_shift_register_reg_c_16_n_0;
  wire io_shift_register_reg_c_17_n_0;
  wire io_shift_register_reg_c_18_n_0;
  wire io_shift_register_reg_c_19_n_0;
  wire io_shift_register_reg_c_1_n_0;
  wire io_shift_register_reg_c_20_n_0;
  wire io_shift_register_reg_c_21_n_0;
  wire io_shift_register_reg_c_22_n_0;
  wire io_shift_register_reg_c_23_n_0;
  wire io_shift_register_reg_c_24_n_0;
  wire io_shift_register_reg_c_25_n_0;
  wire io_shift_register_reg_c_26_n_0;
  wire io_shift_register_reg_c_27_n_0;
  wire io_shift_register_reg_c_28_n_0;
  wire io_shift_register_reg_c_29_n_0;
  wire io_shift_register_reg_c_2_n_0;
  wire io_shift_register_reg_c_30_n_0;
  wire io_shift_register_reg_c_3_n_0;
  wire io_shift_register_reg_c_4_n_0;
  wire io_shift_register_reg_c_5_n_0;
  wire io_shift_register_reg_c_6_n_0;
  wire io_shift_register_reg_c_7_n_0;
  wire io_shift_register_reg_c_8_n_0;
  wire io_shift_register_reg_c_9_n_0;
  wire io_shift_register_reg_c_n_0;
  wire io_shift_register_reg_gate__0_n_0;
  wire io_shift_register_reg_gate__1_n_0;
  wire io_shift_register_reg_gate_n_0;
  wire o_mosi_OBUF;
  wire [2:0]out;
  wire [60:49]p_0_out;
  wire w_load_shift;
  wire w_miso_data;
  wire \NLW_io_shift_register_reg[30]_srl31_shiftlne_component_io_shift_register_reg_c_29_Q31_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \io_shift_register[59]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .O(\io_shift_register[59]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \io_shift_register[59]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .O(w_load_shift));
  (* srl_bus_name = "\shiftlne_component/io_shift_register_reg " *) 
  (* srl_name = "\shiftlne_component/io_shift_register_reg[30]_srl31_shiftlne_component_io_shift_register_reg_c_29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \io_shift_register_reg[30]_srl31_shiftlne_component_io_shift_register_reg_c_29 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLK(clk_BUFG),
        .D(w_miso_data),
        .Q(\io_shift_register_reg[30]_srl31_shiftlne_component_io_shift_register_reg_c_29_n_0 ),
        .Q31(\NLW_io_shift_register_reg[30]_srl31_shiftlne_component_io_shift_register_reg_c_29_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[31]_shiftlne_component_io_shift_register_reg_c_30 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(\io_shift_register_reg[30]_srl31_shiftlne_component_io_shift_register_reg_c_29_n_0 ),
        .Q(\io_shift_register_reg[31]_shiftlne_component_io_shift_register_reg_c_30_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[32] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_gate__1_n_0),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[33] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[0]),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[34] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[1]),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[35] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[2]),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[36] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[3]),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[37] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[4]),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[38] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[5]),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[39] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[6]),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[40] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[7]),
        .Q(D[8]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[41] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[8]),
        .Q(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[42] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[9]),
        .Q(D[10]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[43] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[10]),
        .Q(D[11]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[44] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[11]),
        .Q(D[12]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[45] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[12]),
        .Q(D[13]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[46] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[13]),
        .Q(D[14]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[47] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[14]),
        .Q(D[15]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[48] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[15]),
        .Q(p_0_out[49]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[49] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(p_0_out[49]),
        .PRE(w_load_shift),
        .Q(p_0_out[50]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[50] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(p_0_out[50]),
        .PRE(w_load_shift),
        .Q(p_0_out[51]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[51] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(p_0_out[51]),
        .PRE(w_load_shift),
        .Q(p_0_out[52]));
  (* srl_bus_name = "\shiftlne_component/io_shift_register_reg " *) 
  (* srl_name = "\shiftlne_component/io_shift_register_reg[53]_srl2_shiftlne_component_io_shift_register_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \io_shift_register_reg[53]_srl2_shiftlne_component_io_shift_register_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLK(clk_BUFG),
        .D(p_0_out[52]),
        .Q(\io_shift_register_reg[53]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[54]_shiftlne_component_io_shift_register_reg_c_1 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(\io_shift_register_reg[53]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ),
        .Q(\io_shift_register_reg[54]_shiftlne_component_io_shift_register_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[55] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_gate__0_n_0),
        .Q(p_0_out[56]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[56] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(p_0_out[56]),
        .PRE(w_load_shift),
        .Q(p_0_out[57]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[57] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(p_0_out[57]),
        .PRE(w_load_shift),
        .Q(p_0_out[58]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[58] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(p_0_out[58]),
        .Q(p_0_out[59]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[59] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(p_0_out[59]),
        .PRE(w_load_shift),
        .Q(p_0_out[60]));
  (* srl_bus_name = "\shiftlne_component/io_shift_register_reg " *) 
  (* srl_name = "\shiftlne_component/io_shift_register_reg[61]_srl2_shiftlne_component_io_shift_register_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \io_shift_register_reg[61]_srl2_shiftlne_component_io_shift_register_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLK(clk_BUFG),
        .D(p_0_out[60]),
        .Q(\io_shift_register_reg[61]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[62]_shiftlne_component_io_shift_register_reg_c_1 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(\io_shift_register_reg[61]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ),
        .Q(\io_shift_register_reg[62]_shiftlne_component_io_shift_register_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[63] 
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_gate_n_0),
        .Q(o_mosi_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(1'b1),
        .Q(io_shift_register_reg_c_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_0
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_n_0),
        .Q(io_shift_register_reg_c_0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_1
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_0_n_0),
        .Q(io_shift_register_reg_c_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_10
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_9_n_0),
        .Q(io_shift_register_reg_c_10_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_11
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_10_n_0),
        .Q(io_shift_register_reg_c_11_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_12
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_11_n_0),
        .Q(io_shift_register_reg_c_12_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_13
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_12_n_0),
        .Q(io_shift_register_reg_c_13_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_14
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_13_n_0),
        .Q(io_shift_register_reg_c_14_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_15
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_14_n_0),
        .Q(io_shift_register_reg_c_15_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_16
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_15_n_0),
        .Q(io_shift_register_reg_c_16_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_17
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_16_n_0),
        .Q(io_shift_register_reg_c_17_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_18
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_17_n_0),
        .Q(io_shift_register_reg_c_18_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_19
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_18_n_0),
        .Q(io_shift_register_reg_c_19_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_2
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_1_n_0),
        .Q(io_shift_register_reg_c_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_20
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_19_n_0),
        .Q(io_shift_register_reg_c_20_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_21
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_20_n_0),
        .Q(io_shift_register_reg_c_21_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_22
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_21_n_0),
        .Q(io_shift_register_reg_c_22_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_23
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_22_n_0),
        .Q(io_shift_register_reg_c_23_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_24
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_23_n_0),
        .Q(io_shift_register_reg_c_24_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_25
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_24_n_0),
        .Q(io_shift_register_reg_c_25_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_26
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_25_n_0),
        .Q(io_shift_register_reg_c_26_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_27
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_26_n_0),
        .Q(io_shift_register_reg_c_27_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_28
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_27_n_0),
        .Q(io_shift_register_reg_c_28_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_29
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_28_n_0),
        .Q(io_shift_register_reg_c_29_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_3
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_2_n_0),
        .Q(io_shift_register_reg_c_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_30
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_29_n_0),
        .Q(io_shift_register_reg_c_30_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_4
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_3_n_0),
        .Q(io_shift_register_reg_c_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_5
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_4_n_0),
        .Q(io_shift_register_reg_c_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_6
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_5_n_0),
        .Q(io_shift_register_reg_c_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_7
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_6_n_0),
        .Q(io_shift_register_reg_c_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_8
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_7_n_0),
        .Q(io_shift_register_reg_c_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_9
       (.C(clk_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_8_n_0),
        .Q(io_shift_register_reg_c_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    io_shift_register_reg_gate
       (.I0(\io_shift_register_reg[62]_shiftlne_component_io_shift_register_reg_c_1_n_0 ),
        .I1(io_shift_register_reg_c_1_n_0),
        .O(io_shift_register_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    io_shift_register_reg_gate__0
       (.I0(\io_shift_register_reg[54]_shiftlne_component_io_shift_register_reg_c_1_n_0 ),
        .I1(io_shift_register_reg_c_1_n_0),
        .O(io_shift_register_reg_gate__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    io_shift_register_reg_gate__1
       (.I0(\io_shift_register_reg[31]_shiftlne_component_io_shift_register_reg_c_30_n_0 ),
        .I1(io_shift_register_reg_c_30_n_0),
        .O(io_shift_register_reg_gate__1_n_0));
endmodule

(* ECO_CHECKSUM = "2950158" *) (* N = "8" *) (* TS = "64" *) 
(* NotValidForBitStream *)
module spi_master
   (i_clk,
    i_start,
    i_miso,
    i_reset,
    o_sclk,
    o_slave_select,
    o_mosi,
    o_datax);
  input i_clk;
  input i_start;
  input i_miso;
  input i_reset;
  output o_sclk;
  inout o_slave_select;
  output o_mosi;
  output [15:0]o_datax;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire clk;
  wire clk_BUFG;
  wire counter_component_n_0;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_miso;
  wire i_miso_IBUF;
  wire i_reset;
  wire i_reset_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire [47:32]io_shift_register;
  wire [15:0]o_datax;
  wire [15:0]o_datax_OBUF;
  wire o_mosi;
  wire o_mosi_OBUF;
  wire o_sclk;
  wire o_sclk_OBUF;
  wire o_slave_select;
  wire o_slave_select_OBUF;
  wire prescaler_component_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire w_done;
  wire w_load_shift;
  wire w_miso_data;

initial begin
 $sdf_annotate("tb_data_transition_time_impl.sdf",,,,"tool_control");
end
  LUT4 #(
    .INIT(16'h54AA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_start_IBUF),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_reset_IBUF),
        .D(counter_component_n_0),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_reset_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_reset_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  counter counter_component
       (.D(counter_component_n_0),
        .clk_BUFG(clk_BUFG),
        .i_start_IBUF(i_start_IBUF),
        .out(state),
        .w_load_shift(w_load_shift));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF i_miso_IBUF_inst
       (.I(i_miso),
        .O(i_miso_IBUF));
  IBUF i_reset_IBUF_inst
       (.I(i_reset),
        .O(i_reset_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  OBUF \o_datax_OBUF[0]_inst 
       (.I(o_datax_OBUF[0]),
        .O(o_datax[0]));
  OBUF \o_datax_OBUF[10]_inst 
       (.I(o_datax_OBUF[10]),
        .O(o_datax[10]));
  OBUF \o_datax_OBUF[11]_inst 
       (.I(o_datax_OBUF[11]),
        .O(o_datax[11]));
  OBUF \o_datax_OBUF[12]_inst 
       (.I(o_datax_OBUF[12]),
        .O(o_datax[12]));
  OBUF \o_datax_OBUF[13]_inst 
       (.I(o_datax_OBUF[13]),
        .O(o_datax[13]));
  OBUF \o_datax_OBUF[14]_inst 
       (.I(o_datax_OBUF[14]),
        .O(o_datax[14]));
  OBUF \o_datax_OBUF[15]_inst 
       (.I(o_datax_OBUF[15]),
        .O(o_datax[15]));
  OBUF \o_datax_OBUF[1]_inst 
       (.I(o_datax_OBUF[1]),
        .O(o_datax[1]));
  OBUF \o_datax_OBUF[2]_inst 
       (.I(o_datax_OBUF[2]),
        .O(o_datax[2]));
  OBUF \o_datax_OBUF[3]_inst 
       (.I(o_datax_OBUF[3]),
        .O(o_datax[3]));
  OBUF \o_datax_OBUF[4]_inst 
       (.I(o_datax_OBUF[4]),
        .O(o_datax[4]));
  OBUF \o_datax_OBUF[5]_inst 
       (.I(o_datax_OBUF[5]),
        .O(o_datax[5]));
  OBUF \o_datax_OBUF[6]_inst 
       (.I(o_datax_OBUF[6]),
        .O(o_datax[6]));
  OBUF \o_datax_OBUF[7]_inst 
       (.I(o_datax_OBUF[7]),
        .O(o_datax[7]));
  OBUF \o_datax_OBUF[8]_inst 
       (.I(o_datax_OBUF[8]),
        .O(o_datax[8]));
  OBUF \o_datax_OBUF[9]_inst 
       (.I(o_datax_OBUF[9]),
        .O(o_datax[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[0] 
       (.CLR(1'b0),
        .D(io_shift_register[40]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[10] 
       (.CLR(1'b0),
        .D(io_shift_register[34]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[11] 
       (.CLR(1'b0),
        .D(io_shift_register[35]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[12] 
       (.CLR(1'b0),
        .D(io_shift_register[36]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[13] 
       (.CLR(1'b0),
        .D(io_shift_register[37]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[14] 
       (.CLR(1'b0),
        .D(io_shift_register[38]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[15] 
       (.CLR(1'b0),
        .D(io_shift_register[39]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \o_datax_reg[15]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(w_done));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[1] 
       (.CLR(1'b0),
        .D(io_shift_register[41]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[2] 
       (.CLR(1'b0),
        .D(io_shift_register[42]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[3] 
       (.CLR(1'b0),
        .D(io_shift_register[43]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[4] 
       (.CLR(1'b0),
        .D(io_shift_register[44]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[5] 
       (.CLR(1'b0),
        .D(io_shift_register[45]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[6] 
       (.CLR(1'b0),
        .D(io_shift_register[46]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[7] 
       (.CLR(1'b0),
        .D(io_shift_register[47]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[8] 
       (.CLR(1'b0),
        .D(io_shift_register[32]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[9] 
       (.CLR(1'b0),
        .D(io_shift_register[33]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[9]));
  OBUF o_mosi_OBUF_inst
       (.I(o_mosi_OBUF),
        .O(o_mosi));
  OBUF o_sclk_OBUF_inst
       (.I(o_sclk_OBUF),
        .O(o_sclk));
  OBUF o_slave_select_OBUF_inst
       (.I(o_slave_select_OBUF),
        .O(o_slave_select));
  LUT3 #(
    .INIT(8'hB5)) 
    o_slave_select_OBUF_inst_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(o_slave_select_OBUF));
  prescaler prescaler_component
       (.CLK(i_clk_IBUF_BUFG),
        .clk(clk),
        .o_slave_select_OBUF(o_slave_select_OBUF),
        .out(o_sclk_OBUF),
        .w_gated_sclk_reg(prescaler_component_n_0));
  shiftlne shiftlne_component
       (.D(io_shift_register),
        .clk_BUFG(clk_BUFG),
        .o_mosi_OBUF(o_mosi_OBUF),
        .out(state),
        .w_load_shift(w_load_shift),
        .w_miso_data(w_miso_data));
  FDRE #(
    .INIT(1'b0)) 
    w_gated_sclk_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prescaler_component_n_0),
        .Q(clk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_miso_data_reg
       (.C(o_sclk_OBUF),
        .CE(1'b1),
        .D(i_miso_IBUF),
        .Q(w_miso_data),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
