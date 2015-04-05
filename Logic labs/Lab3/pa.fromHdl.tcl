
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Lab3 -dir "X:/Desktop/Logic labs/Lab3/planAhead_run_2" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Eight_bit_counter.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Debouncer.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Eight_bit_counter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Eight_bit_counter $srcset
add_files [list {Eight_bit_counter.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
