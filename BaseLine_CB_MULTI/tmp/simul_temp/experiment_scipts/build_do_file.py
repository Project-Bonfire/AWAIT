DO_FILE = '../tmp_sim.do'

def build_do_file(tb, fi_do):

    rtl_files = ['vcom ../../Packages/router_pack.vhd\n',
                 'vcom ../../RTL/base_line/arbiter_in.vhd\n',
                 'vcom ../../RTL/base_line/arbiter_out.vhd\n',
                 'vcom ../../RTL/base_line/allocator.vhd\n',
                 'vcom ../../RTL/base_line/LBDR.vhd\n',
                 'vcom ../../RTL/base_line/xbar.vhd\n',
                 'vcom ../../RTL/base_line/NI.vhd\n',
                 'vcom ../../RTL/base_line/Parity_checker_for_router_links.vhd\n',
                 'vcom ../../RTL/base_line/FIFO_one_hot_credit_based.vhd\n',
                 'vcom ../../RTL/base_line/Router_32_bit_credit_based.vhd\n',
                 'vcom ../../Packages/TB_Package_32_bit_credit_based_NI.vhd\n',
                 'vcom network_4x4_credit_based.vhd\n']

    with open(DO_FILE, 'w') as sim_do:
        sim_do.write('# Temporary simulation file for running the experiments\n')
        sim_do.write('# Do not edit\n')
        sim_do.write('# Really... there is no point in doing that\n\n')

        sim_do.write('vlib work\n\n')

        sim_do.write('# Include RTL files and compile them\n')
        sim_do.writelines(rtl_files)

        sim_do.write('\n# Testbench\n')
        sim_do.write('vcom ' + tb[3:] + '\n\n')

        sim_do.write('# Start the simulation\n')
        sim_do.write('vsim work.tb_network_4x4 -suppress 8780\n\n')

        sim_do.write('# Fault injection\n')
        sim_do.write('do ' + fi_do[3:] + '\n\n')

        sim_do.write('run 100000 ns\n\n')

        sim_do.write('quit -f\n')

    return DO_FILE
