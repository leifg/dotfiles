window_root "~/projects/coruscant"
new_window "dev"
run_cmd "bundle exec guard"
split_v 50

select_pane 1

split_h 50

select_pane 2

run_cmd "bundle exec rails console"
