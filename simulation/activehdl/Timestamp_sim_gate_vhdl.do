transcript to asim_log
createdesign Timestamp C:/Quartus_Proyects/Timestamp/simulation/activehdl
opendesign -a Timestamp.adf
waveformmode ASDB
alib  vhdl_libs/altera_vhdl
amap altera vhdl_libs/altera_vhdl
acom -strict93 -dbg -work altera c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/altera_syn_attributes.vhd
acom -strict93 -dbg -work altera c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/altera_standard_functions.vhd
acom -strict93 -dbg -work altera c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/alt_dspbuilder_package.vhd
acom -strict93 -dbg -work altera c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/altera_europa_support_lib.vhd
acom -strict93 -dbg -work altera c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/altera_primitives_components.vhd
acom -strict93 -dbg -work altera c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/altera_primitives.vhd

alib  vhdl_libs/cycloneive_vhdl
amap cycloneive vhdl_libs/cycloneive_vhdl
acom -strict93 -dbg -work cycloneive c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/cycloneive_atoms.vhd
acom -strict93 -dbg -work cycloneive c:/intelfpga_lite/23.1std/quartus/eda/sim_lib/cycloneive_components.vhd

addfile -c -auto C:/Quartus_Proyects/Timestamp/simulation/activehdl/Timestamp.vho

