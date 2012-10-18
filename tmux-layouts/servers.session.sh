if initialize_session "servers"; then

  load_window "sfweb-server"
  load_window "cybot-server"
  load_window "team_dashboard-server"

  select_window 0

fi

finalize_and_go_to_session