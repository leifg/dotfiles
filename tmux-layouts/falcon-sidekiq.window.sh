window_root "~/projects/falcon"
new_window "sidekiq"
run_cmd "touch log/sidekiq.log && tail -f log/sidekiq.log"
split_v 70

select_pane 1
run_cmd "redis-cli -n 12"
split_h 50
split_v 80

select_pane 2
run_cmd "vagrant up; bin/tunnel.sh"

select_pane 3
run_cmd "bin/falcon-sidekiq"
split_v 50

select_pane 4
run_cmd "bundle exec rackup -p 5678"

select_pane 1