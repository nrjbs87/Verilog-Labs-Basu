
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name four_bit_binary_adder_subtractor -dir "X:/Desktop/Logic labs/four_bit_binary_adder_subtractor/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "four_bit_binary_adder_subtractor.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {xor.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Full_Adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {four_bit_binary_adder_subtractor.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../BCD_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top BCD_adder $srcset
add_files [list {four_bit_binary_adder_subtractor.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
