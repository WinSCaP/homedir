# Terminal Setup Configuration

This repository contains my personal terminal setup configurations for Zsh, including environment variables, aliases, and custom prompt settings. The setup leverages the XDG Base Directory Specification for a cleaner home directory, enhances the shell experience with `zsh` and `starship`, and includes custom aliases for improved command line efficiency.

## Prerequisites

Before you begin, ensure you have the following installed:
- `Zsh`: The Z Shell
- `Starship`: A minimal, blazing-fast, and infinitely customizable prompt for any shell
- `exa`: A modern replacement for `ls`
- `bat`: A clone of `cat` with syntax highlighting and Git integration
- `rg` (ripgrep): A line-oriented search tool that recursively searches your current directory for a regex pattern

## Installation

1. **Clone the repository** to your local machine:

```bash
git clone https://github.com/WinSCaP/homedir.git
cd homedir```

ln -s $(pwd)/.zshenv ~/.zshenv
ln -s $(pwd)/.zshrc ~/.zshrc

2. **Apply the configurations** by starting a new Zsh session or sourcing the files:

