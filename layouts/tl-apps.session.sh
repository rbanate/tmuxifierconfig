# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/projects/thrivelab/tl-apps"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "tl-apps"; then

  # Create a new window inline within session layout definition.
  new_window "neovim"  # Select the default active window on session creation.
  run_cmd "nvim ."
  split_v 20
  run_cmd "nx run api:serve"
  split_h 50
  select_pane 1;
  # run_cmd "nvim ."
  #select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
