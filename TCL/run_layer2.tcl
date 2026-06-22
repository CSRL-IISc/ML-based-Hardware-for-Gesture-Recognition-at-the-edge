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

set myFiles [list L_2_0_0_Main.v L_2_1_0_SRAM.v L_2_1_1_Weight_Loader.v L_2_2_0_SRAM_Biases.v L_2_2_1_Bias_Loader.v L_2_3_0_Mux_4096.v L_2_3_1_Mux_64.v L_2_4_0_DFF_15_bits.v L_2_4_1_Filter.v L_2_5_0_Relu.v L_2_6_0_Global_average_pooling.v L_2_6_1_Accumlator.v L_2_6_2_Shift_register.v L_2_6_3_Divide.v L_2_6_4_Counter_508.v L_2_6_5_Reset_Next_stage.v L_2_7_0_Mux_Sel.v L_2_7_0_NegEdge_DFF.v L_2_7_1_PosEdge_DFF.v]   ;# All your HDL files
set basename L_2_0_0_Main   ;# name of top level module
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
report timing > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/timing/Layer_2/Run4/${basename}_${runname}_timing.rep
report gates  > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/cell/Layer_2/Run4/${basename}_${runname}_cell.rep
report power  -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power.rep
report_power -by_hierarchy -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_hier_mW.rep
report_power -module L_2_0_0_Main -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_0_0_Main_mW.rep
report_power -module L_2_1_0_SRAM -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_1_0_SRAM_mW.rep
report_power -module L_2_1_1_Weight_Loader -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_1_1_Weight_Loader_mW.rep
report_power -module L_2_2_0_SRAM_Biases -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_2_0_SRAM_Biases_mW.rep
report_power -module L_2_1_1_Weight_Loader -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_1_1_Weight_Loader_mW.rep
report_power -module L_2_2_1_Bias_Loader -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_2_1_Bias_Loader_mW.rep
report_power -module L_2_3_0_Mux_4096 -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_3_0_Mux_4096_mW.rep
report_power -module L_2_3_1_Mux_64 -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_3_1_Mux_64_mW.rep
report_power -module L_2_4_1_Filter -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_4_1_Filter_mW.rep
report_power -module L_2_5_0_Relu -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_5_0_Relu_mW.rep
report_power -module L_2_7_0_Mux_Sel -levels all -unit mW > /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Layer_2/Run4/${basename}_${runname}_power_L_2_7_0_Mux_Sel_mW.rep

# Write out the structural Verilog and sdc files
write_hdl -mapped >  /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/synth_verilog/Layer_2/Run4/${basename}_${runname}.v
write_sdc >  /data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/constraints/Layer_2/Run4/${basename}_${runname}.sdc


