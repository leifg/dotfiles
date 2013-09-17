window_root "~/projects/falcon"
new_window "import"
run_cmd "tail -f log/import.log"
split_v 60

select_pane 1
split_h 50

select_pane 2
run_cmd "bundle exec pry"
split_v 50

select_pane 3
run_cmd "redis-cli -n 5"

select_pane 1