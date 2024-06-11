transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {SineGenerator.vho}

vcom -93 -work work {C:/Users/sias/Desktop/CSLab/SineGenerator/simulation/modelsim/Waveform.vwf.vht}

vsim -t 1ps -L altera -L cyclone10lp -L gate_work -L work -voptargs="+acc"  SineGenerator_vhd_vec_tst

do C:/Users/sias/Desktop/CSLab/SineGenerator/simulation/modelsim/Waveform.vwf.do
