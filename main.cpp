// ===================================================================================
// Copyright Guillaume Bonfante (Université de Lorraine), Jean-Yves Marion 
// (Université de Lorraine), Benjamin Rouxel, Fabrice Sabatier (INRIA), 
// Aurélien Thierry
// October 8th, 2015
// 
// email of the authors : Guillaume.Bonfante@loria.fr, Jean-Yves.Marion@loria.fr, 
// Fabrice.Sabatier@inria.fr
// 
// This software is a computer program whose purpose is to disassemble
// self-modifying binaries with overlapping instructions.
// 
// This software is governed by the CeCILL license under French law and
// abiding by the rules of distribution of free software.  You can  use, 
// modify and/ or redistribute the software under the terms of the CeCILL
// license as circulated by CEA, CNRS and INRIA at the following URL
// "http://www.cecill.info". 
// 
// As a counterpart to the access to the source code and  rights to copy,
// modify and redistribute granted by the license, users are provided only
// with a limited warranty  and the software's author,  the holder of the
// economic rights,  and the successive licensors  have only  limited
// liability. 
// 
// In this respect, the user's attention is drawn to the risks associated
// with loading,  using,  modifying and/or developing or reproducing the
// software by the user in light of its specific status of free software,
// that may mean  that it is complicated to manipulate,  and  that  also
// therefore means  that it is reserved for developers  and  experienced
// professionals having in-depth computer knowledge. Users are therefore
// encouraged to load and test the software's suitability as regards their
// requirements in conditions enabling the security of their systems and/or 
// data to be ensured and,  more generally, to use and operate it in the 
// same conditions as regards security. 
// 
// The fact that you are presently reading this means that you have had
// knowledge of the CeCILL license and that you accept its terms.
// ===================================================================================

#include "Instruction.h"
#include "Decoder_xed.h"
#include "Simulator.h"
#include "Graph.h"
#include "Trace.h"
#include "TraceCFG.h"
#include "Layer.h"
#include "utils.h"

#include <getopt.h>

#include <cstdlib>
#include <string>
#include <exception>
#include <fstream>
#include <utility>
#include <vector>
#include <sys/time.h>
#include <sys/resource.h>
using namespace std;

run_config_t run_config;

double get_time()
{
    struct timeval t;
    struct timezone tzp;
    gettimeofday(&t, &tzp);
    return t.tv_sec + t.tv_usec*1e-6;
}


void print_report(trace_t *trace, Cfg &cfg, layers_t &layers) {
    cout << "---------------- " << endl;
    cout << "Total inst in trace: " << trace->wave_size << endl ;
    cout << "Total static disas inst: " << (cfg.map_inst.size()-trace->wave_size) << endl;
    cout << "Total decoded inst: " << cfg.map_inst.size() << endl;
    int addr_cnt = 0;
    for(pair<Address_Wave, instruction_t*> el : cfg.map_inst) {
        addr_cnt += el.second->size;
    }
    cout << "Nb used addr : " << addr_cnt << endl;
    
    cout << "Total layers: " << layers.size() << endl;
    size_t check = 0;
    for(size_t i=0 ; i < layers.size() ; i++) {
        cout << "\tLayer " << (i+1) << " : " << layers[i]->size() << " instructions" << endl;
        check += layers[i]->size();
    }
    cout << "\t(" << check << ")" << endl;
        
    cout << "Unaligned: " << endl;
    map<size_t, size_t>* unaligned = cod_layer_count_unaligned(cfg);
    check = 0;
    for(pair<size_t, size_t> ul : *unaligned) {
        cout << "\t" << ul.second << " addresses used by " << ul.first << " instructions" << endl;
        check += ul.second*ul.first;
    }
    cout << "\t(" << check << ")" << endl;
    delete unaligned;
}

void finish_run(trace_t *trace, Cfg *cfg) {
    layers_t layers;
    cod_layer_buildLayer(&layers, cfg);
    
    print_report(trace, *cfg, layers);
    
    ofstream xdot(run_config.xdot_file);
    cod_cfg_to_xdot(&xdot, cfg, &layers);
    xdot.close();
    
    if(!run_config.listing_file.empty()) {
        ofstream listing(run_config.listing_file);
        for(pair<Address_Wave, instruction_t*> el : cfg->map_inst) {
            listing << h2s(el.first.first) << ": ";
            size_t i = 0;
            for(; i < el.second->size ; i++)
                listing << bin2ascii(el.second->bytes+i, 1) << " ";
            for(; i < 16 ; i++)
                listing << "   ";
            listing << el.second->text << endl;
        }
        listing.close();
    }
    
    for(pair<Address_Wave, instruction_t *> el : cfg->map_inst)
        cod_inst_free(el.second);
    
    cod_layer_free(&layers);
    cod_cfg_free(cfg);
}

/*!
 * \brief run - Start disassembling
 * 
 *  Start disassembling at a specific address, or use the default one
 * 
 * @param Machine &tm - the initialized machine
 */
void run() {
    Cfg cfg;
    
    decoder_t decoder;
    cod_dec_init(&decoder);
    
    simulator_t sim;
    cod_sim_init(&sim);
    
    trace_t trace;
    if(!run_config.trace_file.empty()) {
        cod_trace_init(&trace);
        cod_trace_buildCFG(&trace, &cfg);
        cod_trace_free(&trace);
        cod_sim_buildCFG_fromTrace(&sim, &decoder, &cfg);
    }
    else if(!run_config.cfg_file.empty()) {
        cod_tracecfg_init(&trace);
        cod_tracecfg_buildCFG(&trace, &cfg);
        cod_tracecfg_free(&trace);
        cod_sim_buildCFG_fromTrace(&sim, &decoder, &cfg);
    }
    else
        cod_sim_buildCFG(&sim, &decoder, &cfg);
    
    cod_sim_free(&sim);
    
    finish_run(&trace, &cfg);
}

void run_multiple() {
    int last_wave = run_config.wave+1;
    run_config.wave = 0;
    
    string init_file = run_config.input_file;
    
    Cfg cfg;
    
    decoder_t decoder;
    cod_dec_init(&decoder);
    
    trace_t trace;
    cod_trace_init(&trace);
    simulator_t sim;
    cod_sim_init(&sim);
    
    for(int i = 0 ; i < last_wave ; i++) {
        run_config.wave = i;
        trace.wave = i;
        trace.file.clear(ios::goodbit);
        
        cod_trace_buildCFG(&trace, &cfg);
        
        cod_sim_buildCFG_fromTrace(&sim, &decoder, &cfg);
        cod_sim_free(&sim);
        run_config.input_file = init_file+"_wave"+to_string(i);
        cod_sim_init(&sim);
    }
    
    cod_trace_free(&trace);
    cod_sim_free(&sim);
    
    finish_run(&trace, &cfg);
}

void usage(string prg) {
    cout << endl;
    cout << "CoDisAsmV2  Copyright (C) 2015  Rouxel Benjamin <benjamin@lexuor.net>" << endl;
    cout << "This program comes with ABSOLUTELY NO WARRANTY." << endl;
    cout << "This is free software, and you are welcome to redistribute it under certain conditions;" << endl;
    cout << "type `less LICENCE' for details." << endl;
    cout << endl;
    cout << prg << " [options] [-i infile] [-t tracefile]" << endl;
    cout << endl << "Description" << endl;
    cout << "\t-h, --help \tDisplay help" << endl;
    cout << "\t-d, --debug \tActivate debug mode - display a lot of useful info during process" << endl;
    cout << "\t-r, --debug_tr \tActivate debug mode for trace only - display a lot of useful info while parsing trace" << endl;
    cout << "\t-e, --main \tMain address to start the process in hexadecimal form (i.e.: 0x1005A1B)" << endl;
    cout << "\t-i, --input \tInput file path" << endl;
        cout << "\t\t\tCan be the .exe, or a wave .exe_waveXX. ";
        cout << "In case of wave \"-w XX\" parameter can be ommitted, it will be guessed from the file name" << endl;
    cout << "\t-x, --xdot \tXDot output file" << endl;
    cout << "\t-c, --compressed \tTrace input file" << endl;
    cout << "\t-w, --wave \tDisassemble only this wave number (starting at 0)" << endl;
        cout << "\t\t\tIf combine with --multiple, will disassemble all waves until this one" << endl;
//    cout << "\t-s, --sbs \tStep-By-Step stop between fetch and decode for each instruction" << endl;
    cout << "\t-p, --collapse \tCollapse basic bloc in the CFG" << endl;
    cout << "\t-l, --listing \toutput assembly listing to file" << endl;
    cout << endl << endl;
}

/*!
 *  \brief Main 
 * 
 * Get configuration
 * Run disassembling
 * Build XDot
 * 
 * @param argc
 * @param argv
 * @return 
 */
int main(int argc, char** argv) {
    double start = get_time();
    
    static struct option long_options[] = {
        {"help"     , no_argument       , 0, 'h'},      // Display help
#ifdef DEBUG
        {"debug"    , no_argument       , 0, 'd'},
        {"debug_tr" , no_argument       , 0, 'r'},
#endif
        {"main"     , required_argument , 0, 'e'},      
        {"input"    , required_argument , 0, 'i'},      
        {"xdot"     , required_argument , 0, 'x'},
        {"trace"    , required_argument , 0, 't'},
        {"compressed"      , required_argument , 0, 'c'},
        {"wave"     , required_argument , 0, 'w'},
        {"sbs"      , no_argument       , 0, 's'},
        {"collapse" , no_argument       , 0, 'p'},
        {"listing"  , required_argument , 0, 'l'},
        {0, 0, 0, 0} 					// en dernier, sinon c'est segfault pour tout le monde (ahah...)
    };
    
    int option_index = 0;
    int c;
    while ((c = getopt_long(argc, argv, "hde:i:x:t:c:w:rspl:", long_options, &option_index)) != -1) {
        switch (c) {
            case 'h':
                usage(argv[0]);
                return EXIT_SUCCESS;
#ifdef DEBUG
            case 'd':
                run_config.debug = true;
                break;
            case 'r':
                run_config.debug_trace = true;
                break;
#endif
            case 'e':
                run_config.start_addr = stoul(optarg, nullptr, 16);
                break;
            case 'i':
                run_config.input_file = optarg;
                break;
            case 'x':
                run_config.xdot_file = optarg;
                break;
            case 't':
                run_config.trace_file = optarg;
                break;
            case 'c':
                run_config.cfg_file = optarg;
                break;
            case 'w':
                run_config.wave = static_cast<short>(atoi(optarg));
                break;
            case 's':
                run_config.step_by_step = true;
                break;
            case 'p':
                run_config.collapse = true;
                break;
            case 'l':
                run_config.listing_file = optarg;
                break;
            default:
                usage(argv[0]);
                return EXIT_FAILURE;
        }
    }
    if(run_config.input_file.empty()) {
        cout << "Missing binary file" << endl;
        usage(argv[0]);
        return EXIT_FAILURE;
    }
    
    if(!run_config.trace_file.empty() && !run_config.cfg_file.empty()) {
        cout << "Trace file and CFG file are mutually exclusive" << endl;
        usage(argv[0]);
        return EXIT_FAILURE;
    }
    
    if(run_config.xdot_file.empty())
        run_config.xdot_file = run_config.input_file+".dot";
    
    size_t index = run_config.input_file.find("_wave");
    if(index != string::npos) {
        short wave = static_cast<short>(atoi(run_config.input_file.substr(index+5).c_str()));
        if(run_config.wave != -1 && run_config.wave != wave) {
            cout << "Bad wave number or bad input file" << endl;
            usage(argv[0]);
            return EXIT_FAILURE;
        }
        run_config.wave = wave;
        
        run();
    }
    else if(run_config.wave > -1) {
        if(run_config.trace_file.empty()) {
            cout << "Disassembling multiple wave requires a trace file";
            usage(argv[0]);
            return EXIT_FAILURE;
        }
        run_multiple();
    }
    else {
        run_config.wave = 0;
        run();
    }
    
    double stop = get_time();
    cout << "Time: " << (stop-start) << endl; 
    return EXIT_SUCCESS;
}

