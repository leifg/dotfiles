window_root "~/projects/falcon"
new_window "development"
run_cmd "rbenv shell 1.9.3-p429; bundle exec guard"
split_v 50

select_pane 1

select_pane 0