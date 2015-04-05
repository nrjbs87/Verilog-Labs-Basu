
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Seven_Segment_Display -dir "X:/Desktop/Logic labs/Lab4/Seven_Segment_Display/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "X:/Desktop/Logic labs/Lab4/Seven_Segment_Display/Final_bto7.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {X:/Desktop/Logic labs/Lab4/Seven_Segment_Display} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Final_bto7.ucf" [current_fileset -constrset]
add_files [list {Final_bto7.ucf}] -fileset [get_property constrset [current_run]]
link_design
