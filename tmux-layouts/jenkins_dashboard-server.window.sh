window_root "~/code/sf_jenkins_dashboard/"

new_window "jenkins_dashboard-server"

run_cmd "dashing start"  0

select_pane 0