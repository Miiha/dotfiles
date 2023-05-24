set -U FZF_TMUX 1
set -U FZF_LEGACY_KEYBINDINGS 0
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden -g "!.git" '
