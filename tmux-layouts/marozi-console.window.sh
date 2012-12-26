window_root "~/projects/marozi"
new_window "console"
run_cmd "mongo"
split_v 50

select_pane 1
run_cmd "bundle exec rails c"

select_pane 0