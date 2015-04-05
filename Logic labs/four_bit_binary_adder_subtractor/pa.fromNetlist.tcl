
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name four_bit_binary_adder_subtractor -dir "X:/Desktop/Logic labs/four_bit_binary_adder_subtractor/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "X:/Desktop/Logic labs/four_bit_binary_adder_subtractor/BCD_adder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {X:/Desktop/Logic labs/four_bit_binary_adder_subtractor} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "BCD_adder.ucf" [current_fileset -constrset]
add_files [list {BCD_adder.ucf}] -fileset [get_property constrset [current_run]]
link_design
