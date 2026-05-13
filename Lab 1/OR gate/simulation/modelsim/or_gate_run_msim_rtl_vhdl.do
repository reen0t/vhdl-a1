transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {//campus.mcgill.ca/EMF/ELE/hmoura2/Desktop/Lab 1/OR gate/or_gate.vhd}

vcom -93 -work work {//campus.mcgill.ca/EMF/ELE/hmoura2/Desktop/Lab 1/OR gate/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
