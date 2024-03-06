# Enable useful options for Zsh
# `nomatch`: If no files match a pattern, don't treat it as an error.
# `autopushd`: Automatically push the current directory to the stack on directory change.
setopt nomatch autopushd

# Bind keys for incremental history searching in vi mode
# `^R`: Incremental search backward through history.
bindkey '^R' history-incremental-search-backward

# Completion system setup
# Specify the file used by zstyle for configuration.
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

# Initialize completion system
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

# Completion styling and caching
# Enable and configure caching for faster completion.
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_DIR/zcompcache"
# Remove group names from completion listings.
zstyle ':completion:*' group-name ''
# Customize descriptions format.
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
# Customize messages format.
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
# Customize warnings format, e.g., when no matches are found.
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'

# History configuration set by zsh-newuser-install
HISTFILE=~/.histfile  # Specify the history file location.
HISTSIZE=1000000  # Set the maximum number of entries stored in memory.
SAVEHIST=1000000  # Set the maximum number of entries saved in the history file.

# Disable automatic cd, beep notifications, and command completion notifications.
unsetopt autocd beep notify
# Set vi keybindings.
bindkey -v

# Aliases for common commands, using alternative tools for better functionality
alias l="exa -lh"  # Long listing format with human-readable file sizes.
alias ls="exa"  # Basic listing using `exa`.
alias la="exa -la"  # List all files including hidden, with long format.
alias ll="exa -ll"  # Long listing with extended file information.
alias cat="bat"  # Use `bat` instead of `cat` for syntax highlighting.
alias grep="rg"  # Use `rg` (ripgrep) instead of traditional grep for faster searching.

# Set the Cargo (Rust package manager) home directory.
export CARGO_HOME="$HOME/.cargo"
# Add local bin and Cargo binaries to the PATH for easy access.
export PATH="$HOME/.local/bin:$CARGO_HOME/bin:$PATH"

# Initialize Starship prompt.
eval "$(starship init zsh)"
# Source syntax highlighting script for better command line readability.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
