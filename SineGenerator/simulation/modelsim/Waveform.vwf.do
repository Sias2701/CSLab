vcom -work work C:/Users/sias/Desktop/CSLab/SineGenerator/simulation/modelsim/Waveform.vwf.vht
vsim -voptargs=+acc -c -t 1ps -L cyclone10lp -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.SineGenerator_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
