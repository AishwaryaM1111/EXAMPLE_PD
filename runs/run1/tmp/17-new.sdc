###############################################################################
# Created by write_sdc
# Thu Feb 27 11:13:16 2025
###############################################################################
current_design new
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name __VIRTUAL_CLK__ -period 10.0000 
set_clock_uncertainty 0.2500 __VIRTUAL_CLK__
set_input_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {a}]
set_input_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {b}]
set_input_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {cin}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {co}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {s}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {co}]
set_load -pin_load 0.0334 [get_ports {s}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cin}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
