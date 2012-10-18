new_window "background"

split_v 66
split_v 50

run_cmd "~/tools/start_proxy.sh"  0
run_cmd "~/tools/tunnel_home.sh" 1
run_cmd "~/scripts/bash/watchfolder_dumpimport.sh" 2

select_pane 0