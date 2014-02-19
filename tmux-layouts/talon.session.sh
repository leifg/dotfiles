session_root "~/projects/talon"

if initialize_session "talon"; then
  load_window "talon-dev"
  load_window "talon-repo"
  load_window "talon-run"
  select_window 0
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session1
