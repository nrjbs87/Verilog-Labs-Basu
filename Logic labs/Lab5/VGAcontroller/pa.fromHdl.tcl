
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name VGAcontroller -dir "X:/Desktop/Logic labs/Lab5/VGAcontroller/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "vga_display.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {clk_divider16.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../Downloads/vga_controller_640_60.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {seven_alternate.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Bin_to_Seg.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {BCDconverter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../Downloads/vga_display.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top vga_display $srcset
add_files [list {vga_display.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
