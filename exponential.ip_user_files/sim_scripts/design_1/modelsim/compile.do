vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_9
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xbip_utils_v3_0_14
vlib modelsim_lib/msim/c_reg_fd_v12_0_10
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_10
vlib modelsim_lib/msim/c_addsub_v12_0_19
vlib modelsim_lib/msim/mult_gen_v12_0_22
vlib modelsim_lib/msim/axi_utils_v2_0_10
vlib modelsim_lib/msim/cordic_v6_0_23
vlib modelsim_lib/msim/xlslice_v1_0_4

vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_9 modelsim_lib/msim/blk_mem_gen_v8_4_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_14 modelsim_lib/msim/xbip_utils_v3_0_14
vmap c_reg_fd_v12_0_10 modelsim_lib/msim/c_reg_fd_v12_0_10
vmap xbip_dsp48_wrapper_v3_0_6 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vmap xbip_pipe_v3_0_10 modelsim_lib/msim/xbip_pipe_v3_0_10
vmap c_addsub_v12_0_19 modelsim_lib/msim/c_addsub_v12_0_19
vmap mult_gen_v12_0_22 modelsim_lib/msim/mult_gen_v12_0_22
vmap axi_utils_v2_0_10 modelsim_lib/msim/axi_utils_v2_0_10
vmap cordic_v6_0_23 modelsim_lib/msim/cordic_v6_0_23
vmap xlslice_v1_0_4 modelsim_lib/msim/xlslice_v1_0_4

vlog -work xpm  -incr -mfcu  -sv \
"D:/xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -mfcu  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_2/sim/design_1_blk_mem_gen_0_2.v" \
"../../../bd/design_1/ip/design_1_kappa_mul_k_0_0/sim/design_1_kappa_mul_k_0_0.v" \

vcom -work xbip_utils_v3_0_14  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/b27f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_10  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/47fd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/d531/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_19  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/a1b8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_22  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/e765/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_10  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/7e77/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_23  -93  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/4464/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_cordic_0_1/sim/design_1_cordic_0_1.vhd" \

vlog -work xlslice_v1_0_4  -incr -mfcu  \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_mul_kappa_0_0/sim/design_1_mul_kappa_0_0.v" \
"../../../bd/design_1/ip/design_1_cas2bufa_0_0/sim/design_1_cas2bufa_0_0.v" \
"../../../bd/design_1/ip/design_1_dist_init_0_0/sim/design_1_dist_init_0_0.v" \
"../../../bd/design_1/ip/design_1_sph2cas_0_0/sim/design_1_sph2cas_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_cordic_1_0/sim/design_1_cordic_1_0.vhd" \
"../../../bd/design_1/ip/design_1_cordic_2_0/sim/design_1_cordic_2_0.vhd" \
"../../../bd/design_1/ip/design_1_cordic_3_0/sim/design_1_cordic_3_0.vhd" \
"../../../bd/design_1/ip/design_1_cordic_4_0/sim/design_1_cordic_4_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/design_1/ip/design_1_save_exp_out_0_0/sim/design_1_save_exp_out_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

