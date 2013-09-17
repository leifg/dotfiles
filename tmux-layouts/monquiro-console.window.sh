window_root "~/projects/monquiro"
new_window "console"
run_cmd "psql marozi_development"
split_v 50

select_pane 1
run_cmd "bundle exec rails c"

select_pane 0