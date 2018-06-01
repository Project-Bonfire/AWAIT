vcom -cover bcesfx ../src/ahb_package.vhd
vcom -cover bcesfx ../src/ahb_configure.vhd
vcom -cover bcesfx ../src/ahb_funct.vhd
vcom -cover bcesfx ../src/fifo.vhd
vcom -cover bcesfx ../src/slv_mem.vhd
vcom -cover bcesfx ../src/ahb_slave_wait.vhd
vcom -cover bcesfx ../src/mst_wrap.vhd
vcom -cover bcesfx ../src/ahb_master.vhd
vcom -cover bcesfx ../src/ahb_arbiter.vhd
vcom -cover bcesfx ../src/uut_stimulator.vhd
vcom -cover bcesfx ../src/ahb_components.vhd
vcom -cover bcesfx ../src/ahb_tb.vhd

vsim -coverage -voptargs="+cover=bcestfx" work.ahb_tb(rtl)# -t 100ps
add wave -position insertpoint sim/:ahb_tb:*
run -all
wave zoom full
