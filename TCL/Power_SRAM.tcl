# =====================================================
# Clean SRAM Power Extraction Script WITH COUNTER
# =====================================================

set report_path "/data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Model_2_Top/Run11/SRAM_power_report.rep"

file delete -force $report_path

puts "Generating SRAM power report..."

# Initialize counter
set sram_count 0

redirect $report_path {

    # -------------------------------
    # L1 SRAMs
    # -------------------------------
    report power -by_leaf_instance L1/m0_S1 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L1/m2_S1 -unit mW -silent
    incr sram_count    

    # -------------------------------
    # L2 SRAMs
    # -------------------------------
    report power -by_leaf_instance L2/m0/S1 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L2/m0/S2 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L2/m0/S3 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L2/m0/S4 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L2/m2/S1 -unit mW -silent
    incr sram_count

    # -------------------------------
    # L3 SRAMs
    # -------------------------------
    report power -by_leaf_instance L3/m0/S1 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L3/m0/S2 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L3/m0/S3 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L3/m0/S4 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L3/m2/S1 -unit mW -silent
    incr sram_count

    # -------------------------------
    # L4 SRAM
    # -------------------------------
    report power -by_leaf_instance L4_m0/S1 -unit mW -silent
    incr sram_count

    # -------------------------------
    # Interface SRAMs
    # -------------------------------
    report power -by_leaf_instance L0/S1 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L0/S2 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L0/S3 -unit mW -silent
    incr sram_count
    report power -by_leaf_instance L0/S4 -unit mW -silent
    incr sram_count
}

puts "--------------------------------------"
puts "Total SRAM reports generated: $sram_count"
puts "Report saved to:"
puts $report_path


# =====================================================
# Create Clean Summary TXT from Generated .rep File
# =====================================================

set txt_path "/data/kamal/a1projectRTL/model_2_opt/rtl/OUTPUT/power/Model_2_Top/Run11/SRAM_power_summary.txt"

file delete -force $txt_path

set rep_file [open $report_path r]
set txt_file [open $txt_path w]

puts $txt_file "=========================================================================="
puts $txt_file "SRAM Power Summary (mW)"
puts $txt_file "=========================================================================="
puts $txt_file [format "%-30s %-12s %-12s %-12s %-12s" \
    "Instance" "Leakage" "Internal" "Switching" "Total"]
puts $txt_file "--------------------------------------------------------------------------"

# Initialize totals
set total_leak 0
set total_internal 0
set total_switch 0
set total_total 0

while {[gets $rep_file line] >= 0} {

    if {[regexp {^([0-9.eE+-]+)\s+([0-9.eE+-]+)\s+([0-9.eE+-]+)\s+([0-9.eE+-]+)\s+/Model_2_top/(.+)} \
        $line -> leakage internal switching total inst]} {

        puts $txt_file [format "%-30s %-12s %-12s %-12s %-12s" \
            $inst $leakage $internal $switching $total]

        # Accumulate totals
        set total_leak     [expr {$total_leak + $leakage}]
        set total_internal [expr {$total_internal + $internal}]
        set total_switch   [expr {$total_switch + $switching}]
        set total_total    [expr {$total_total + $total}]
    }
}

puts $txt_file "--------------------------------------------------------------------------"
puts $txt_file [format "%-30s %-12.6f %-12.6f %-12.6f %-12.6f" \
    "TOTAL_SUM" $total_leak $total_internal $total_switch $total_total]

close $rep_file
close $txt_file

puts "--------------------------------------"
puts "Formatted summary saved to:"
puts $txt_path
puts "--------------------------------------"