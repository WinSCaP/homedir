# Define base directories following the XDG Base Directory Specification to keep the home directory clean and organized.
export XDG_CACHE_HOME="$HOME/.cache"  # Directory where user-specific non-essential (cached) data should be written.
export XDG_DATA_HOME="$HOME/.local/share"  # Directory where user-specific data files should be written.
export XDG_CONFIG_HOME="$HOME/.config"  # Directory where user-specific configuration files should be written.
export XDG_STATE_HOME="$HOME/.local/state"  # Directory for state data that should be preserved between sessions.

# Set the Cargo home directory, where Rust packages and configurations will be stored, following the XDG Directory Specification.
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Extend the PATH environment variable to include the local bin directory and Cargo bin directory for easy execution of locally installed programs and Rust packages.
export PATH="$HOME/.local/bin:$CARGO_HOME/bin:$PATH"
