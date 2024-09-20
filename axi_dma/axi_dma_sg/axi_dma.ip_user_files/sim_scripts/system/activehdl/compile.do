vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/lib_fifo_v1_0_13
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_21
vlib activehdl/axi_sg_v4_1_12
vlib activehdl/axi_dma_v7_1_20
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v2_0_1
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/xlconstant_v1_1_6
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/axi_protocol_converter_v2_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 activehdl/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_21 activehdl/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 activehdl/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 activehdl/axi_dma_v7_1_20
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_1 activehdl/axis_data_fifo_v2_0_1
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_1  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/e1b1/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_data_fifo_0_0/sim/system_axis_data_fifo_0_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_arsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_rsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_awsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_wsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_sarn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_srn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/sim/bd_44e3_s01mmu_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/sim/bd_44e3_s01tr_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_15/sim/bd_44e3_s01sic_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/sim/bd_44e3_s01a2s_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/sim/bd_44e3_sawn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/sim/bd_44e3_swn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/sim/bd_44e3_sbn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/sim/bd_44e3_s02mmu_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/sim/bd_44e3_s02tr_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/sim/bd_44e3_s02sic_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/sim/bd_44e3_s02a2s_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/sim/bd_44e3_sarn_1.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/sim/bd_44e3_srn_1.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/sim/bd_44e3_sawn_1.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_27/sim/bd_44e3_swn_1.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_28/sim/bd_44e3_sbn_1.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_29/sim/bd_44e3_m00s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_30/sim/bd_44e3_m00arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_31/sim/bd_44e3_m00rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_32/sim/bd_44e3_m00awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_33/sim/bd_44e3_m00wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_34/sim/bd_44e3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_35/sim/bd_44e3_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \
"../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/sim/system.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../axi_dma.srcs/sources_1/bd/system/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../axi_dma.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

