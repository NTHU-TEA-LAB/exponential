transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_14
vlib riviera/c_reg_fd_v12_0_10
vlib riviera/xbip_dsp48_wrapper_v3_0_6
vlib riviera/xbip_pipe_v3_0_10
vlib riviera/c_addsub_v12_0_19
vlib riviera/mult_gen_v12_0_22
vlib riviera/axi_utils_v2_0_10
vlib riviera/cordic_v6_0_23
vlib riviera/xlslice_v1_0_4

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_14 riviera/xbip_utils_v3_0_14
vmap c_reg_fd_v12_0_10 riviera/c_reg_fd_v12_0_10
vmap xbip_dsp48_wrapper_v3_0_6 riviera/xbip_dsp48_wrapper_v3_0_6
vmap xbip_pipe_v3_0_10 riviera/xbip_pipe_v3_0_10
vmap c_addsub_v12_0_19 riviera/c_addsub_v12_0_19
vmap mult_gen_v12_0_22 riviera/mult_gen_v12_0_22
vmap axi_utils_v2_0_10 riviera/axi_utils_v2_0_10
vmap cordic_v6_0_23 riviera/cordic_v6_0_23
vmap xlslice_v1_0_4 riviera/xlslice_v1_0_4

vlog -work xpm  -incr -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_utils_v3_0_14 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l mult_gen_v12_0_22 -l axi_utils_v2_0_10 -l cordic_v6_0_23 -l xlslice_v1_0_4 \
"D:/xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_utils_v3_0_14 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l mult_gen_v12_0_22 -l axi_utils_v2_0_10 -l cordic_v6_0_23 -l xlslice_v1_0_4 \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_utils_v3_0_14 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l mult_gen_v12_0_22 -l axi_utils_v2_0_10 -l cordic_v6_0_23 -l xlslice_v1_0_4 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_2/sim/design_1_blk_mem_gen_0_2.v" \
"../../../bd/design_1/ip/design_1_kappa_mul_k_0_0/sim/design_1_kappa_mul_k_0_0.v" \

vcom -work xbip_utils_v3_0_14 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/b27f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_10 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/47fd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/d531/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_19 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/a1b8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_22 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/e765/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_10 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/7e77/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_23 -93  -incr \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/4464/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_cordic_0_1/sim/design_1_cordic_0_1.vhd" \

vlog -work xlslice_v1_0_4  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_utils_v3_0_14 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l mult_gen_v12_0_22 -l axi_utils_v2_0_10 -l cordic_v6_0_23 -l xlslice_v1_0_4 \
"../../../../exponential.gen/sources_1/bd/design_1/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_utils_v3_0_14 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l mult_gen_v12_0_22 -l axi_utils_v2_0_10 -l cordic_v6_0_23 -l xlslice_v1_0_4 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_mul_kappa_0_0/sim/design_1_mul_kappa_0_0.v" \
"../../../bd/design_1/ip/design_1_cas2bufa_0_0/sim/design_1_cas2bufa_0_0.v" \
"../../../bd/design_1/ip/design_1_dist_init_0_0/sim/design_1_dist_init_0_0.v" \
"../../../bd/design_1/ip/design_1_sph2cas_0_0/sim/design_1_sph2cas_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_cordic_1_0/sim/design_1_cordic_1_0.vhd" \
"../../../bd/design_1/ip/design_1_cordic_2_0/sim/design_1_cordic_2_0.vhd" \
"../../../bd/design_1/ip/design_1_cordic_3_0/sim/design_1_cordic_3_0.vhd" \
"../../../bd/design_1/ip/design_1_cordic_4_0/sim/design_1_cordic_4_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_utils_v3_0_14 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l mult_gen_v12_0_22 -l axi_utils_v2_0_10 -l cordic_v6_0_23 -l xlslice_v1_0_4 \
"../../../bd/design_1/ip/design_1_save_exp_out_0_0/sim/design_1_save_exp_out_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

