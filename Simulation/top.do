vlib work
vlog top_module.v top_tb.v
vsim -voptargs=+acc work.top_tb
add wave *
run -all
#quit -sim