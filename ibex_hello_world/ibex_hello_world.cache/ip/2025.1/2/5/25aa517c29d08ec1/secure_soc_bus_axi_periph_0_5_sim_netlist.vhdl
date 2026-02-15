-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Feb  5 16:25:39 2026
-- Host        : en433345.uoa.auckland.ac.nz running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ secure_soc_bus_axi_periph_0_5_sim_netlist.vhdl
-- Design      : secure_soc_bus_axi_periph_0_5
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_to_axi is
  port (
    sb_rvalid : out STD_LOGIC;
    sb_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sb_ready : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sb_we : in STD_LOGIC;
    sb_req : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sb_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sb_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sb_be : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_to_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_to_axi is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \__12/i__n_0\ : STD_LOGIC;
  signal \m_axi_araddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal m_axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \m_axi_awaddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal m_axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal m_axi_bready_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal m_axi_rready_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal m_axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal sb_rvalid_i_1_n_0 : STD_LOGIC;
  signal sb_rvalid_i_2_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:00,READ:10,WRITE:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:00,READ:10,WRITE:01";
  attribute SOFT_HLUTNM of \__12/i_\ : label is "soft_lutpair0";
begin
  m_axi_arvalid <= \^m_axi_arvalid\;
  m_axi_awvalid <= \^m_axi_awvalid\;
  m_axi_bready <= \^m_axi_bready\;
  m_axi_rready <= \^m_axi_rready\;
  m_axi_wvalid <= \^m_axi_wvalid\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F008F0F8"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(0),
      I3 => state(1),
      I4 => m_axi_bvalid,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0044"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => m_axi_rvalid,
      I3 => state(0),
      I4 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\__12/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => m_axi_bvalid,
      O => \__12/i__n_0\
    );
\m_axi_araddr[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(0),
      I3 => state(1),
      O => \m_axi_araddr[31]_i_1_n_0\
    );
\m_axi_araddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(0),
      Q => m_axi_araddr(0)
    );
\m_axi_araddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(10),
      Q => m_axi_araddr(10)
    );
\m_axi_araddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(11),
      Q => m_axi_araddr(11)
    );
\m_axi_araddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(12),
      Q => m_axi_araddr(12)
    );
\m_axi_araddr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(13),
      Q => m_axi_araddr(13)
    );
\m_axi_araddr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(14),
      Q => m_axi_araddr(14)
    );
\m_axi_araddr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(15),
      Q => m_axi_araddr(15)
    );
\m_axi_araddr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(16),
      Q => m_axi_araddr(16)
    );
\m_axi_araddr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(17),
      Q => m_axi_araddr(17)
    );
\m_axi_araddr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(18),
      Q => m_axi_araddr(18)
    );
\m_axi_araddr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(19),
      Q => m_axi_araddr(19)
    );
\m_axi_araddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(1),
      Q => m_axi_araddr(1)
    );
\m_axi_araddr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(20),
      Q => m_axi_araddr(20)
    );
\m_axi_araddr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(21),
      Q => m_axi_araddr(21)
    );
\m_axi_araddr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(22),
      Q => m_axi_araddr(22)
    );
\m_axi_araddr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(23),
      Q => m_axi_araddr(23)
    );
\m_axi_araddr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(24),
      Q => m_axi_araddr(24)
    );
\m_axi_araddr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(25),
      Q => m_axi_araddr(25)
    );
\m_axi_araddr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(26),
      Q => m_axi_araddr(26)
    );
\m_axi_araddr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(27),
      Q => m_axi_araddr(27)
    );
\m_axi_araddr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(28),
      Q => m_axi_araddr(28)
    );
\m_axi_araddr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(29),
      Q => m_axi_araddr(29)
    );
\m_axi_araddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(2),
      Q => m_axi_araddr(2)
    );
\m_axi_araddr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(30),
      Q => m_axi_araddr(30)
    );
\m_axi_araddr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(31),
      Q => m_axi_araddr(31)
    );
\m_axi_araddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(3),
      Q => m_axi_araddr(3)
    );
\m_axi_araddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(4),
      Q => m_axi_araddr(4)
    );
\m_axi_araddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(5),
      Q => m_axi_araddr(5)
    );
\m_axi_araddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(6),
      Q => m_axi_araddr(6)
    );
\m_axi_araddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(7),
      Q => m_axi_araddr(7)
    );
\m_axi_araddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(8),
      Q => m_axi_araddr(8)
    );
\m_axi_araddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_araddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(9),
      Q => m_axi_araddr(9)
    );
m_axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF00000404"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(1),
      I3 => m_axi_arready,
      I4 => state(0),
      I5 => \^m_axi_arvalid\,
      O => m_axi_arvalid_i_1_n_0
    );
m_axi_arvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_arvalid_i_1_n_0,
      Q => \^m_axi_arvalid\
    );
\m_axi_awaddr[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(0),
      I3 => state(1),
      O => \m_axi_awaddr[31]_i_1_n_0\
    );
\m_axi_awaddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(0),
      Q => m_axi_awaddr(0)
    );
\m_axi_awaddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(10),
      Q => m_axi_awaddr(10)
    );
\m_axi_awaddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(11),
      Q => m_axi_awaddr(11)
    );
\m_axi_awaddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(12),
      Q => m_axi_awaddr(12)
    );
\m_axi_awaddr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(13),
      Q => m_axi_awaddr(13)
    );
\m_axi_awaddr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(14),
      Q => m_axi_awaddr(14)
    );
\m_axi_awaddr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(15),
      Q => m_axi_awaddr(15)
    );
\m_axi_awaddr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(16),
      Q => m_axi_awaddr(16)
    );
\m_axi_awaddr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(17),
      Q => m_axi_awaddr(17)
    );
\m_axi_awaddr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(18),
      Q => m_axi_awaddr(18)
    );
\m_axi_awaddr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(19),
      Q => m_axi_awaddr(19)
    );
\m_axi_awaddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(1),
      Q => m_axi_awaddr(1)
    );
\m_axi_awaddr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(20),
      Q => m_axi_awaddr(20)
    );
\m_axi_awaddr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(21),
      Q => m_axi_awaddr(21)
    );
\m_axi_awaddr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(22),
      Q => m_axi_awaddr(22)
    );
\m_axi_awaddr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(23),
      Q => m_axi_awaddr(23)
    );
\m_axi_awaddr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(24),
      Q => m_axi_awaddr(24)
    );
\m_axi_awaddr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(25),
      Q => m_axi_awaddr(25)
    );
\m_axi_awaddr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(26),
      Q => m_axi_awaddr(26)
    );
\m_axi_awaddr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(27),
      Q => m_axi_awaddr(27)
    );
\m_axi_awaddr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(28),
      Q => m_axi_awaddr(28)
    );
\m_axi_awaddr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(29),
      Q => m_axi_awaddr(29)
    );
\m_axi_awaddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(2),
      Q => m_axi_awaddr(2)
    );
\m_axi_awaddr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(30),
      Q => m_axi_awaddr(30)
    );
\m_axi_awaddr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(31),
      Q => m_axi_awaddr(31)
    );
\m_axi_awaddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(3),
      Q => m_axi_awaddr(3)
    );
\m_axi_awaddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(4),
      Q => m_axi_awaddr(4)
    );
\m_axi_awaddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(5),
      Q => m_axi_awaddr(5)
    );
\m_axi_awaddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(6),
      Q => m_axi_awaddr(6)
    );
\m_axi_awaddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(7),
      Q => m_axi_awaddr(7)
    );
\m_axi_awaddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(8),
      Q => m_axi_awaddr(8)
    );
\m_axi_awaddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_addr(9),
      Q => m_axi_awaddr(9)
    );
m_axi_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF00000808"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(0),
      I3 => m_axi_awready,
      I4 => state(1),
      I5 => \^m_axi_awvalid\,
      O => m_axi_awvalid_i_1_n_0
    );
m_axi_awvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_awvalid_i_1_n_0,
      Q => \^m_axi_awvalid\
    );
m_axi_bready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF00000808"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(0),
      I3 => m_axi_bvalid,
      I4 => state(1),
      I5 => \^m_axi_bready\,
      O => m_axi_bready_i_1_n_0
    );
m_axi_bready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_bready_i_1_n_0,
      Q => \^m_axi_bready\
    );
m_axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF00000404"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(1),
      I3 => m_axi_rvalid,
      I4 => state(0),
      I5 => \^m_axi_rready\,
      O => m_axi_rready_i_1_n_0
    );
m_axi_rready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rready_i_1_n_0,
      Q => \^m_axi_rready\
    );
\m_axi_wdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(0),
      Q => m_axi_wdata(0)
    );
\m_axi_wdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(10),
      Q => m_axi_wdata(10)
    );
\m_axi_wdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(11),
      Q => m_axi_wdata(11)
    );
\m_axi_wdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(12),
      Q => m_axi_wdata(12)
    );
\m_axi_wdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(13),
      Q => m_axi_wdata(13)
    );
\m_axi_wdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(14),
      Q => m_axi_wdata(14)
    );
\m_axi_wdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(15),
      Q => m_axi_wdata(15)
    );
\m_axi_wdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(16),
      Q => m_axi_wdata(16)
    );
\m_axi_wdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(17),
      Q => m_axi_wdata(17)
    );
\m_axi_wdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(18),
      Q => m_axi_wdata(18)
    );
\m_axi_wdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(19),
      Q => m_axi_wdata(19)
    );
\m_axi_wdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(1),
      Q => m_axi_wdata(1)
    );
\m_axi_wdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(20),
      Q => m_axi_wdata(20)
    );
\m_axi_wdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(21),
      Q => m_axi_wdata(21)
    );
\m_axi_wdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(22),
      Q => m_axi_wdata(22)
    );
\m_axi_wdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(23),
      Q => m_axi_wdata(23)
    );
\m_axi_wdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(24),
      Q => m_axi_wdata(24)
    );
\m_axi_wdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(25),
      Q => m_axi_wdata(25)
    );
\m_axi_wdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(26),
      Q => m_axi_wdata(26)
    );
\m_axi_wdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(27),
      Q => m_axi_wdata(27)
    );
\m_axi_wdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(28),
      Q => m_axi_wdata(28)
    );
\m_axi_wdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(29),
      Q => m_axi_wdata(29)
    );
\m_axi_wdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(2),
      Q => m_axi_wdata(2)
    );
\m_axi_wdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(30),
      Q => m_axi_wdata(30)
    );
\m_axi_wdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(31),
      Q => m_axi_wdata(31)
    );
\m_axi_wdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(3),
      Q => m_axi_wdata(3)
    );
\m_axi_wdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(4),
      Q => m_axi_wdata(4)
    );
\m_axi_wdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(5),
      Q => m_axi_wdata(5)
    );
\m_axi_wdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(6),
      Q => m_axi_wdata(6)
    );
\m_axi_wdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(7),
      Q => m_axi_wdata(7)
    );
\m_axi_wdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(8),
      Q => m_axi_wdata(8)
    );
\m_axi_wdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_wdata(9),
      Q => m_axi_wdata(9)
    );
\m_axi_wstrb_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_be(0),
      Q => m_axi_wstrb(0)
    );
\m_axi_wstrb_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_be(1),
      Q => m_axi_wstrb(1)
    );
\m_axi_wstrb_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_be(2),
      Q => m_axi_wstrb(2)
    );
\m_axi_wstrb_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axi_awaddr[31]_i_1_n_0\,
      CLR => sb_rvalid_i_2_n_0,
      D => sb_be(3),
      Q => m_axi_wstrb(3)
    );
m_axi_wvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF00000808"
    )
        port map (
      I0 => sb_we,
      I1 => sb_req,
      I2 => state(0),
      I3 => m_axi_wready,
      I4 => state(1),
      I5 => \^m_axi_wvalid\,
      O => m_axi_wvalid_i_1_n_0
    );
m_axi_wvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid\
    );
\sb_rdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(0),
      Q => sb_rdata(0)
    );
\sb_rdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(10),
      Q => sb_rdata(10)
    );
\sb_rdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(11),
      Q => sb_rdata(11)
    );
\sb_rdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(12),
      Q => sb_rdata(12)
    );
\sb_rdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(13),
      Q => sb_rdata(13)
    );
\sb_rdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(14),
      Q => sb_rdata(14)
    );
\sb_rdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(15),
      Q => sb_rdata(15)
    );
\sb_rdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(16),
      Q => sb_rdata(16)
    );
\sb_rdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(17),
      Q => sb_rdata(17)
    );
\sb_rdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(18),
      Q => sb_rdata(18)
    );
\sb_rdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(19),
      Q => sb_rdata(19)
    );
\sb_rdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(1),
      Q => sb_rdata(1)
    );
\sb_rdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(20),
      Q => sb_rdata(20)
    );
\sb_rdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(21),
      Q => sb_rdata(21)
    );
\sb_rdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(22),
      Q => sb_rdata(22)
    );
\sb_rdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(23),
      Q => sb_rdata(23)
    );
\sb_rdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(24),
      Q => sb_rdata(24)
    );
\sb_rdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(25),
      Q => sb_rdata(25)
    );
\sb_rdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(26),
      Q => sb_rdata(26)
    );
\sb_rdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(27),
      Q => sb_rdata(27)
    );
\sb_rdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(28),
      Q => sb_rdata(28)
    );
\sb_rdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(29),
      Q => sb_rdata(29)
    );
\sb_rdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(2),
      Q => sb_rdata(2)
    );
\sb_rdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(30),
      Q => sb_rdata(30)
    );
\sb_rdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(31),
      Q => sb_rdata(31)
    );
\sb_rdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(3),
      Q => sb_rdata(3)
    );
\sb_rdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(4),
      Q => sb_rdata(4)
    );
\sb_rdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(5),
      Q => sb_rdata(5)
    );
\sb_rdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(6),
      Q => sb_rdata(6)
    );
\sb_rdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(7),
      Q => sb_rdata(7)
    );
\sb_rdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(8),
      Q => sb_rdata(8)
    );
\sb_rdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sb_rvalid_i_1_n_0,
      CLR => sb_rvalid_i_2_n_0,
      D => m_axi_rdata(9),
      Q => sb_rdata(9)
    );
sb_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => \__12/i__n_0\,
      Q => sb_ready
    );
sb_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(0),
      I1 => m_axi_rvalid,
      I2 => state(1),
      O => sb_rvalid_i_1_n_0
    );
sb_rvalid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => sb_rvalid_i_2_n_0
    );
sb_rvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sb_rvalid_i_2_n_0,
      D => sb_rvalid_i_1_n_0,
      Q => sb_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sb_req : in STD_LOGIC;
    sb_we : in STD_LOGIC;
    sb_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sb_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sb_be : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sb_rvalid : out STD_LOGIC;
    sb_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sb_ready : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "secure_soc_bus_axi_periph_0_5,bus_to_axi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bus_to_axi,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_MODE of m_axi_awaddr : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axi_awaddr : signal is "XIL_INTERFACENAME M_AXI, NUM_WRITE_THREADS 1, NUM_READ_THREADS 1, MAX_BURST_LENGTH 1, HAS_RRESP 1, HAS_BRESP 1, HAS_WSTRB 1, HAS_PROT 1, ADDR_WIDTH 32, PROTOCOL AXI4LITE, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_to_axi
     port map (
      clk => clk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      rst_n => rst_n,
      sb_addr(31 downto 0) => sb_addr(31 downto 0),
      sb_be(3 downto 0) => sb_be(3 downto 0),
      sb_rdata(31 downto 0) => sb_rdata(31 downto 0),
      sb_ready => sb_ready,
      sb_req => sb_req,
      sb_rvalid => sb_rvalid,
      sb_wdata(31 downto 0) => sb_wdata(31 downto 0),
      sb_we => sb_we
    );
end STRUCTURE;
