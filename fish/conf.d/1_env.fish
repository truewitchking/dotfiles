fish_add_path -g ~/.local/bin

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx EDITOR nvim
set -gx PAGER moor
set -gx MOOR --colors=256 --no-statusbar --wrap --terminal-fg --reformat
set -gx RIPGREP_CONFIG_PATH "$HOME/.config/rg/config"
set -gx FZF_DEFAULT_OPTS_FILE "$HOME/.config/fzf/vague"
