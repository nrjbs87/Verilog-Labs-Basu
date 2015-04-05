
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Lab2 -dir "X:/Desktop/Logic labs/Lab2/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "X:/Desktop/Logic labs/Lab2/ALU.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {X:/Desktop/Logic labs/Lab2} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ALU.ucf" [current_fileset -constrset]
add_files [list {ALU.ucf}] -fileset [get_property constrset [current_run]]
link_design
