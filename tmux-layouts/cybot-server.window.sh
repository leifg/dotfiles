window_root "~/code/cybot"

new_window "cybot-server"

run_cmd "bundle exec rackup -p 4567"  0

select_pane 0