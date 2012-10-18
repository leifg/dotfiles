window_root "~/code/other/team_dashboard"

new_window "team_dashboard-server"

run_cmd "bundle exec rails s --port 3001 "  0

select_pane 0