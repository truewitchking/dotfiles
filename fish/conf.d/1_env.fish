fish_add_path --global --path --move /Users/witchking/.local/bin/
set -U fish_prompt_pwd_dir_length 0
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx EDITOR nvim
set -gx PAGER moor
set -gx MOOR --colors=256 --no-statusbar --wrap --terminal-fg --reformat
set -gx RIPGREP_CONFIG_PATH "$HOME/.config/rg/config"
