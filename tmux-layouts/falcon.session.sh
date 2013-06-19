session_root "~/projects/falcon"

if initialize_session "falcon"; then
  load_window "falcon-sidekiq"
  load_window "falcon-import"
  load_window "falcon-development"
  select_window 1
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session