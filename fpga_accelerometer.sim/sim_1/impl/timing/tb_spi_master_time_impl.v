// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Apr 19 12:36:56 2018
// Host        : UIAS207788S running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/matsg17/Desktop/ele112/fpga_accelerometer/fpga_accelerometer.sim/sim_1/impl/timing/tb_spi_master_time_impl.v
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
    o_sclk_OBUF_BUFG,
    w_load_shift);
  output [0:0]D;
  input [2:0]out;
  input i_start_IBUF;
  input o_sclk_OBUF_BUFG;
  input w_load_shift;

  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire i_start_IBUF;
  wire o_sclk_OBUF_BUFG;
  wire [2:0]out;
  wire [7:0]plusOp__0;
  wire [7:0]w_counter_reg__0;
  wire w_load_shift;

  LUT6 #(
    .INIT(64'hFF04FF040F0F0FFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(out[0]),
        .I3(out[1]),
        .I4(i_start_IBUF),
        .I5(out[2]),
        .O(D));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(w_counter_reg__0[2]),
        .I1(w_counter_reg__0[0]),
        .I2(w_counter_reg__0[1]),
        .I3(w_counter_reg__0[3]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(w_counter_reg__0[5]),
        .I1(w_counter_reg__0[4]),
        .I2(w_counter_reg__0[7]),
        .I3(w_counter_reg__0[6]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_counter[0]_i_1__0 
       (.I0(w_counter_reg__0[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_counter[1]_i_1__0 
       (.I0(w_counter_reg__0[0]),
        .I1(w_counter_reg__0[1]),
        .O(plusOp__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \w_counter[2]_i_1__0 
       (.I0(w_counter_reg__0[1]),
        .I1(w_counter_reg__0[0]),
        .I2(w_counter_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_counter[3]_i_1__0 
       (.I0(w_counter_reg__0[2]),
        .I1(w_counter_reg__0[0]),
        .I2(w_counter_reg__0[1]),
        .I3(w_counter_reg__0[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_counter[4]_i_1__0 
       (.I0(w_counter_reg__0[3]),
        .I1(w_counter_reg__0[1]),
        .I2(w_counter_reg__0[0]),
        .I3(w_counter_reg__0[2]),
        .I4(w_counter_reg__0[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \w_counter[5]_i_1 
       (.I0(w_counter_reg__0[4]),
        .I1(w_counter_reg__0[2]),
        .I2(w_counter_reg__0[0]),
        .I3(w_counter_reg__0[1]),
        .I4(w_counter_reg__0[3]),
        .I5(w_counter_reg__0[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \w_counter[6]_i_1 
       (.I0(w_counter_reg__0[5]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(w_counter_reg__0[4]),
        .I3(w_counter_reg__0[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \w_counter[7]_i_1 
       (.I0(w_counter_reg__0[6]),
        .I1(w_counter_reg__0[4]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(w_counter_reg__0[5]),
        .I4(w_counter_reg__0[7]),
        .O(plusOp__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[0] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[0]),
        .Q(w_counter_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[1] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[1]),
        .Q(w_counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[2] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[2]),
        .Q(w_counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[3] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[3]),
        .Q(w_counter_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[4] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[4]),
        .Q(w_counter_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[5] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[5]),
        .Q(w_counter_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[6] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[6]),
        .Q(w_counter_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \w_counter_reg[7] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(1'b1),
        .CLR(w_load_shift),
        .D(plusOp__0[7]),
        .Q(w_counter_reg__0[7]));
endmodule

module prescaler
   (Q,
    CLK);
  output [0:0]Q;
  input CLK;

  wire CLK;
  wire [0:0]Q;
  wire [4:0]plusOp;
  wire \w_counter_reg_n_0_[0] ;
  wire \w_counter_reg_n_0_[1] ;
  wire \w_counter_reg_n_0_[2] ;
  wire \w_counter_reg_n_0_[3] ;

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
       (.I0(\w_counter_reg_n_0_[1] ),
        .I1(\w_counter_reg_n_0_[0] ),
        .I2(\w_counter_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_counter[3]_i_1 
       (.I0(\w_counter_reg_n_0_[2] ),
        .I1(\w_counter_reg_n_0_[0] ),
        .I2(\w_counter_reg_n_0_[1] ),
        .I3(\w_counter_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_counter[4]_i_1 
       (.I0(\w_counter_reg_n_0_[3] ),
        .I1(\w_counter_reg_n_0_[1] ),
        .I2(\w_counter_reg_n_0_[0] ),
        .I3(\w_counter_reg_n_0_[2] ),
        .I4(Q),
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
        .Q(Q),
        .R(1'b0));
endmodule

module shiftlne
   (w_load_shift,
    o_mosi_OBUF,
    D,
    o_sclk_OBUF_BUFG,
    w_miso_data,
    out);
  output w_load_shift;
  output o_mosi_OBUF;
  output [7:0]D;
  input o_sclk_OBUF_BUFG;
  input w_miso_data;
  input [2:0]out;

  wire [7:0]D;
  wire \io_shift_register[59]_i_1_n_0 ;
  wire \io_shift_register_reg[31]_srl32_shiftlne_component_io_shift_register_reg_c_30_n_1 ;
  wire \io_shift_register_reg[46]_srl15_shiftlne_component_io_shift_register_reg_c_45_n_0 ;
  wire \io_shift_register_reg[47]_shiftlne_component_io_shift_register_reg_c_46_n_0 ;
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
  wire io_shift_register_reg_c_31_n_0;
  wire io_shift_register_reg_c_32_n_0;
  wire io_shift_register_reg_c_33_n_0;
  wire io_shift_register_reg_c_34_n_0;
  wire io_shift_register_reg_c_35_n_0;
  wire io_shift_register_reg_c_36_n_0;
  wire io_shift_register_reg_c_37_n_0;
  wire io_shift_register_reg_c_38_n_0;
  wire io_shift_register_reg_c_39_n_0;
  wire io_shift_register_reg_c_3_n_0;
  wire io_shift_register_reg_c_40_n_0;
  wire io_shift_register_reg_c_41_n_0;
  wire io_shift_register_reg_c_42_n_0;
  wire io_shift_register_reg_c_43_n_0;
  wire io_shift_register_reg_c_44_n_0;
  wire io_shift_register_reg_c_45_n_0;
  wire io_shift_register_reg_c_46_n_0;
  wire io_shift_register_reg_c_4_n_0;
  wire io_shift_register_reg_c_5_n_0;
  wire io_shift_register_reg_c_6_n_0;
  wire io_shift_register_reg_c_7_n_0;
  wire io_shift_register_reg_c_8_n_0;
  wire io_shift_register_reg_c_9_n_0;
  wire io_shift_register_reg_c_n_0;
  wire io_shift_register_reg_gate__0_n_0;
  wire io_shift_register_reg_gate_n_0;
  wire o_mosi_OBUF;
  wire o_sclk_OBUF_BUFG;
  wire [2:0]out;
  wire [60:57]p_0_out;
  wire w_load_shift;
  wire w_miso_data;
  wire \NLW_io_shift_register_reg[31]_srl32_shiftlne_component_io_shift_register_reg_c_30_Q_UNCONNECTED ;

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
  (* srl_name = "\shiftlne_component/io_shift_register_reg[31]_srl32_shiftlne_component_io_shift_register_reg_c_30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \io_shift_register_reg[31]_srl32_shiftlne_component_io_shift_register_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLK(o_sclk_OBUF_BUFG),
        .D(w_miso_data),
        .Q(\NLW_io_shift_register_reg[31]_srl32_shiftlne_component_io_shift_register_reg_c_30_Q_UNCONNECTED ),
        .Q31(\io_shift_register_reg[31]_srl32_shiftlne_component_io_shift_register_reg_c_30_n_1 ));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\shiftlne_component/io_shift_register_reg " *) 
  (* srl_name = "\shiftlne_component/io_shift_register_reg[46]_srl15_shiftlne_component_io_shift_register_reg_c_45 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \io_shift_register_reg[46]_srl15_shiftlne_component_io_shift_register_reg_c_45 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLK(o_sclk_OBUF_BUFG),
        .D(\io_shift_register_reg[31]_srl32_shiftlne_component_io_shift_register_reg_c_30_n_1 ),
        .Q(\io_shift_register_reg[46]_srl15_shiftlne_component_io_shift_register_reg_c_45_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[47]_shiftlne_component_io_shift_register_reg_c_46 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(\io_shift_register_reg[46]_srl15_shiftlne_component_io_shift_register_reg_c_45_n_0 ),
        .Q(\io_shift_register_reg[47]_shiftlne_component_io_shift_register_reg_c_46_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[48] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_gate__0_n_0),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[49] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[0]),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[50] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[1]),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[51] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[2]),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[52] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[3]),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[53] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[4]),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[54] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[5]),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[55] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(D[6]),
        .Q(D[7]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[56] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(D[7]),
        .PRE(w_load_shift),
        .Q(p_0_out[57]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[57] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(p_0_out[57]),
        .PRE(w_load_shift),
        .Q(p_0_out[58]));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[58] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(p_0_out[58]),
        .Q(p_0_out[59]));
  FDPE #(
    .INIT(1'b1)) 
    \io_shift_register_reg[59] 
       (.C(o_sclk_OBUF_BUFG),
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
        .CLK(o_sclk_OBUF_BUFG),
        .D(p_0_out[60]),
        .Q(\io_shift_register_reg[61]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[62]_shiftlne_component_io_shift_register_reg_c_1 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .D(\io_shift_register_reg[61]_srl2_shiftlne_component_io_shift_register_reg_c_0_n_0 ),
        .Q(\io_shift_register_reg[62]_shiftlne_component_io_shift_register_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \io_shift_register_reg[63] 
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_gate_n_0),
        .Q(o_mosi_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(1'b1),
        .Q(io_shift_register_reg_c_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_0
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_n_0),
        .Q(io_shift_register_reg_c_0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_1
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_0_n_0),
        .Q(io_shift_register_reg_c_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_10
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_9_n_0),
        .Q(io_shift_register_reg_c_10_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_11
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_10_n_0),
        .Q(io_shift_register_reg_c_11_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_12
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_11_n_0),
        .Q(io_shift_register_reg_c_12_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_13
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_12_n_0),
        .Q(io_shift_register_reg_c_13_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_14
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_13_n_0),
        .Q(io_shift_register_reg_c_14_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_15
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_14_n_0),
        .Q(io_shift_register_reg_c_15_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_16
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_15_n_0),
        .Q(io_shift_register_reg_c_16_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_17
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_16_n_0),
        .Q(io_shift_register_reg_c_17_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_18
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_17_n_0),
        .Q(io_shift_register_reg_c_18_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_19
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_18_n_0),
        .Q(io_shift_register_reg_c_19_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_2
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_1_n_0),
        .Q(io_shift_register_reg_c_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_20
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_19_n_0),
        .Q(io_shift_register_reg_c_20_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_21
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_20_n_0),
        .Q(io_shift_register_reg_c_21_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_22
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_21_n_0),
        .Q(io_shift_register_reg_c_22_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_23
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_22_n_0),
        .Q(io_shift_register_reg_c_23_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_24
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_23_n_0),
        .Q(io_shift_register_reg_c_24_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_25
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_24_n_0),
        .Q(io_shift_register_reg_c_25_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_26
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_25_n_0),
        .Q(io_shift_register_reg_c_26_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_27
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_26_n_0),
        .Q(io_shift_register_reg_c_27_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_28
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_27_n_0),
        .Q(io_shift_register_reg_c_28_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_29
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_28_n_0),
        .Q(io_shift_register_reg_c_29_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_3
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_2_n_0),
        .Q(io_shift_register_reg_c_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_30
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_29_n_0),
        .Q(io_shift_register_reg_c_30_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_31
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_30_n_0),
        .Q(io_shift_register_reg_c_31_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_32
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_31_n_0),
        .Q(io_shift_register_reg_c_32_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_33
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_32_n_0),
        .Q(io_shift_register_reg_c_33_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_34
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_33_n_0),
        .Q(io_shift_register_reg_c_34_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_35
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_34_n_0),
        .Q(io_shift_register_reg_c_35_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_36
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_35_n_0),
        .Q(io_shift_register_reg_c_36_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_37
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_36_n_0),
        .Q(io_shift_register_reg_c_37_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_38
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_37_n_0),
        .Q(io_shift_register_reg_c_38_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_39
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_38_n_0),
        .Q(io_shift_register_reg_c_39_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_4
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_3_n_0),
        .Q(io_shift_register_reg_c_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_40
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_39_n_0),
        .Q(io_shift_register_reg_c_40_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_41
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_40_n_0),
        .Q(io_shift_register_reg_c_41_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_42
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_41_n_0),
        .Q(io_shift_register_reg_c_42_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_43
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_42_n_0),
        .Q(io_shift_register_reg_c_43_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_44
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_43_n_0),
        .Q(io_shift_register_reg_c_44_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_45
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_44_n_0),
        .Q(io_shift_register_reg_c_45_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_46
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_45_n_0),
        .Q(io_shift_register_reg_c_46_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_5
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_4_n_0),
        .Q(io_shift_register_reg_c_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_6
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_5_n_0),
        .Q(io_shift_register_reg_c_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_7
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_6_n_0),
        .Q(io_shift_register_reg_c_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_8
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_7_n_0),
        .Q(io_shift_register_reg_c_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    io_shift_register_reg_c_9
       (.C(o_sclk_OBUF_BUFG),
        .CE(\io_shift_register[59]_i_1_n_0 ),
        .CLR(w_load_shift),
        .D(io_shift_register_reg_c_8_n_0),
        .Q(io_shift_register_reg_c_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    io_shift_register_reg_gate
       (.I0(\io_shift_register_reg[62]_shiftlne_component_io_shift_register_reg_c_1_n_0 ),
        .I1(io_shift_register_reg_c_1_n_0),
        .O(io_shift_register_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    io_shift_register_reg_gate__0
       (.I0(\io_shift_register_reg[47]_shiftlne_component_io_shift_register_reg_c_46_n_0 ),
        .I1(io_shift_register_reg_c_46_n_0),
        .O(io_shift_register_reg_gate__0_n_0));
endmodule

(* ECO_CHECKSUM = "ea47ca41" *) (* N = "8" *) (* TS = "64" *) 
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
  output o_slave_select;
  output o_mosi;
  output [7:0]o_datax;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
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
  wire [55:48]io_shift_register;
  wire [7:0]o_datax;
  wire [7:0]o_datax_OBUF;
  wire o_mosi;
  wire o_mosi_OBUF;
  wire o_sclk;
  wire o_sclk_OBUF;
  wire o_sclk_OBUF_BUFG;
  wire o_slave_select;
  wire o_slave_select_OBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire w_done;
  wire w_load_shift;
  wire w_miso_data;

initial begin
 $sdf_annotate("tb_spi_master_time_impl.sdf",,,,"tool_control");
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
  counter counter_component
       (.D(counter_component_n_0),
        .i_start_IBUF(i_start_IBUF),
        .o_sclk_OBUF_BUFG(o_sclk_OBUF_BUFG),
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
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[0] 
       (.CLR(1'b0),
        .D(io_shift_register[48]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[1] 
       (.CLR(1'b0),
        .D(io_shift_register[49]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[2] 
       (.CLR(1'b0),
        .D(io_shift_register[50]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[3] 
       (.CLR(1'b0),
        .D(io_shift_register[51]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[4] 
       (.CLR(1'b0),
        .D(io_shift_register[52]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[5] 
       (.CLR(1'b0),
        .D(io_shift_register[53]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[6] 
       (.CLR(1'b0),
        .D(io_shift_register[54]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \o_datax_reg[7] 
       (.CLR(1'b0),
        .D(io_shift_register[55]),
        .G(w_done),
        .GE(1'b1),
        .Q(o_datax_OBUF[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \o_datax_reg[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(w_done));
  OBUF o_mosi_OBUF_inst
       (.I(o_mosi_OBUF),
        .O(o_mosi));
  BUFG o_sclk_OBUF_BUFG_inst
       (.I(o_sclk_OBUF),
        .O(o_sclk_OBUF_BUFG));
  OBUF o_sclk_OBUF_inst
       (.I(o_sclk_OBUF_BUFG),
        .O(o_sclk));
  OBUF o_slave_select_OBUF_inst
       (.I(o_slave_select_OBUF),
        .O(o_slave_select));
  LUT3 #(
    .INIT(8'hC7)) 
    o_slave_select_OBUF_inst_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(o_slave_select_OBUF));
  prescaler prescaler_component
       (.CLK(i_clk_IBUF_BUFG),
        .Q(o_sclk_OBUF));
  shiftlne shiftlne_component
       (.D(io_shift_register),
        .o_mosi_OBUF(o_mosi_OBUF),
        .o_sclk_OBUF_BUFG(o_sclk_OBUF_BUFG),
        .out(state),
        .w_load_shift(w_load_shift),
        .w_miso_data(w_miso_data));
  FDRE #(
    .INIT(1'b0)) 
    w_miso_data_reg
       (.C(o_sclk_OBUF_BUFG),
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
