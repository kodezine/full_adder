-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Feb 15 15:41:50 2024
-- Host        : SOHALPATELCF21 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/s/work/vivado_projects/adder/adder.sim/sim_1/impl/func/xsim/full_adder_tb_func_impl.vhd
-- Design      : full_adder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity full_adder is
  port (
    a_in : in STD_LOGIC;
    b_in : in STD_LOGIC;
    c_in : in STD_LOGIC;
    s_out : out STD_LOGIC;
    c_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of full_adder : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of full_adder : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of full_adder : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of full_adder : entity is "c7b3fe42";
end full_adder;

architecture STRUCTURE of full_adder is
  signal a_in_IBUF : STD_LOGIC;
  signal b_in_IBUF : STD_LOGIC;
  signal c_in_IBUF : STD_LOGIC;
  signal c_out_OBUF : STD_LOGIC;
  signal s_out_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of c_out_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_out_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
a_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => a_in,
      O => a_in_IBUF
    );
b_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => b_in,
      O => b_in_IBUF
    );
c_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => c_in,
      O => c_in_IBUF
    );
c_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => c_out_OBUF,
      O => c_out
    );
c_out_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a_in_IBUF,
      I1 => c_in_IBUF,
      I2 => b_in_IBUF,
      O => c_out_OBUF
    );
s_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s_out_OBUF,
      O => s_out
    );
s_out_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_in_IBUF,
      I1 => a_in_IBUF,
      I2 => c_in_IBUF,
      O => s_out_OBUF
    );
end STRUCTURE;
