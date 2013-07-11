window_root "~/projects/falcon"
new_window "development"
run_cmd "rbenv shell 2.0.0-p247; bundle exec guard"
split_v 50

select_pane 1

select_pane 0