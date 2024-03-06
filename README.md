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

**Clone the repository** to your local machine:

```bash
git clone https://github.com/WinSCaP/homedir.git
cd homedir
```

**Link the configuration files** to their appropriate locations. Ensure you backup your current configurations before proceeding:

```bash
ln -s $(pwd)/.zshenv ~/.zshenv
ln -s $(pwd)/.zshrc ~/.zshrc
```

**Apply the configurations** by starting a new Zsh session or sourcing the files:

```bash
source ~/.zshenv
source ~/.zshrc
```
## Configuration Details

- `.zshenv`: Sets environment variables, including paths for XDG base directories.
- `.zshrc`: Configures Zsh options, keybindings, and aliases for an enhanced terminal experience. It also initializes `starship` for a customized prompt and includes `zsh-syntax-highlighting` for better command readability.

## Customizing

You can customize the configurations by editing the `.zshenv` and `.zshrc` files:
- **Environment Variables**: Adjust the `XDG_*` paths, editor preferences, and `PATH` as needed.
- **Aliases and Functions**: Add or modify aliases in `.zshrc` for commands you use frequently.
- **Prompt**: Customize the `starship` prompt by creating or editing the `starship.toml` in your `$XDG_CONFIG_HOME/starship` directory.

## Contributing

Feel free to fork this repository and submit pull requests to contribute to this setup. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is open-source
