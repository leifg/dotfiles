window_root "~/code/sfweb"

new_window "sfweb-server"

split_v 50

run_cmd "bundle exec script/server"  0
run_cmd "tail -f log/development.log | grep lg:" 1

select_pane 0
