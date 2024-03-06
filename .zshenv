# Set the base directory for user configuration files, making them follow the XDG Base Directory Specification.
export XDG_CONFIG_HOME="$HOME/.config"

# Specify the directory for Zsh configuration files, keeping the Zsh configuration separate and organized.
export ZDOTDIR="$HOME/.config/zsh"

# Set the default editor to Vim, to be used by commands requiring text editing (e.g., `git commit`).
export EDITOR="/usr/bin/vim"
# Set the default visual editor to Vim, used by some programs when a graphical editor is required.
export VISUAL="/usr/bin/vim"

# Customize the pager used for displaying manual pages, integrating `bat` with syntax highlighting for better readability.
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
