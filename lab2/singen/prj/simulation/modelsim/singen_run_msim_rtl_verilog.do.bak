transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/jk/Documents/DE2_70/EDA_Class/lab2/singen/src/rtl {C:/Users/jk/Documents/DE2_70/EDA_Class/lab2/singen/src/rtl/singen.v}
vlog -vlog01compat -work work +incdir+C:/Users/jk/Documents/DE2_70/EDA_Class/lab2/singen/src/ip {C:/Users/jk/Documents/DE2_70/EDA_Class/lab2/singen/src/ip/rom.v}

vlog -vlog01compat -work work +incdir+C:/Users/jk/Documents/DE2_70/EDA_Class/lab2/singen/prj/../src/sim {C:/Users/jk/Documents/DE2_70/EDA_Class/lab2/singen/prj/../src/sim/sml_sin.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  sml_sim

add wave *
view structure
view signals
run -all
