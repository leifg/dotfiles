window_root "~/projects/talon"
new_window "dev"
run_cmd "rbenv shell 2.1.2; bundle exec guard"
split_v 50

select_pane 1

split_h 50

select_pane 2

run_cmd "bundle exec pry"
