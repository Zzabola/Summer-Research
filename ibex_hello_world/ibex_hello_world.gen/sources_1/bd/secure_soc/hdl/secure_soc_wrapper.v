//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Wed Jan 21 16:44:23 2026
//Host        : en433345.uoa.auckland.ac.nz running 64-bit Ubuntu 24.04.2 LTS
//Command     : generate_target secure_soc_wrapper.bd
//Design      : secure_soc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module secure_soc_wrapper
   (reset_rtl,
    sys_clock);
  input reset_rtl;
  input sys_clock;

  wire reset_rtl;
  wire sys_clock;

  secure_soc secure_soc_i
       (.reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
endmodule
