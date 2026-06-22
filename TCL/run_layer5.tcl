######################################################
# Script for Cadence RTL Compiler synthesis      
# Erik Brunvand, 2008
# Use with syn-rtl -f rtl-script
# Replace items inside <> with your own information
######################################################

# Set the search paths to the libraries and the HDL files
# Remember that "." means your current directory. Add more directories
# after the . if you like. 
#set_attribute pbs_db_directory "/data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/tmp_pbs"
set_attribute hdl_search_path [list /data/kamal/a1projectRTL/model_2_opt/rtl/]
set_attribute lib_search_path [list /data/kamal/a1projectRTL/model_2_opt/rtl/]
set_attribute library [list tsdn65lplla1024x8m8f_200a_tt1p2v25c.lib tsdn65lplla1024x8m8m_200a_tt1p2v25c.lib tcbn65lptc_ccs.lib tsdn65lplla64x8m8f_200a_tt1p2v25c.lib]
set_attribute information_level 6 

set myFiles [list L_5_0_0_HardMax.v]   ;# All your HDL files
set basename L_5_0_0_HardMax   ;# name of top level module
set myClk clk                  ;# clock name
set myPeriod_ps 20000            ;# Clock period in ps
set myInDelay_ns 6.5           ;# delay from clock to inputs valid
set myOutDelay_ns 4.5          ;# delay from clock to output valid
set runname _ASIC_[clock format [clock seconds] -format "%Y%m%d_%H%M%S"]        ;# name appended to output files

#*********************************************************
#*   below here shouldn't need to be changed...          *
#*********************************************************

# Analyze and Elaborate the HDL files
read_hdl ${myFiles}
elaborate ${basename}

# Apply Constraints and generate clocks
set clock [define_clock -period ${myPeriod_ps} -name ${myClk} [clock_ports]]	
external_delay -input $myInDelay_ns -clock ${myClk} [find / -port ports_in/*]
external_delay -output $myOutDelay_ns -clock ${myClk} [find / -port ports_out/*]

# Sets transition to default values for Synopsys SDC format, 
# fall/rise 400ps
dc::set_clock_transition .4 $myClk
set_input_transition 0.1 [remove_from_collection [all_inputs] [get_ports $myClk]]
set_attribute external_pin_cap 0.002 [all_outputs]


# check that the design is OK so far
check_design -unresolved
report timing -lint

# Synthesize the design to the target library
synthesize -to_mapped

# Write out the reports
report timing > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/timing/Layer_5/Run1/${basename}_${runname}_timing.rep
report gates  > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/cell/Layer_5/Run1/${basename}_${runname}_cell.rep
report power  -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_5/Run1/${basename}_${runname}_power.rep
report_power -by_hierarchy -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_5/Run1/${basename}_${runname}_power_hier_mW.rep


# Write out the structural Verilog and sdc files
write_hdl -mapped >  /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/synth_verilog/Layer_5/Run1/${basename}_${runname}.v
write_sdc >  /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/constraints/Layer_5/Run1/${basename}_${runname}.sdc



