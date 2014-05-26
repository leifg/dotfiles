window_root "~/projects/talon"
new_window "repo"
run_cmd "rbenv shell 2.1.2; omglog"
split_v 50

select_pane 1

run_cmd "gitsh --git $(which hub)"
