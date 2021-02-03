set fisher_home /usr/local/lib/node_modules/fisherman
set fisher_config ~/.config/fisherman

source ~/.brew-credentials.local

status --is-interactive; and source (rbenv init -|psub)
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

set -gx PATH ~/.rbenv/shims $PATH
set -gx PATH ~/.pyenv/shims $PATH

for file in ~/.config/fish/conf.d/*.fish
    source $file
end

# the fuck
eval (thefuck --alias | tr '\n' ';')

# nvm 
# bass source (brew --prefix nvm)/nvm.sh

set -gx FISH $HOME/.dotfiles
set config_files $FISH/**/*.fish

# hook direnv into fish shell
direnv hook fish | source

# load the path files
for file in $config_files
	
	if begin test (string match "*config.symlink*" $file);or test (string match "*install.fish" $file); end
	else	
		source $file
	end
end

bind -e \ee
bind -e \ev
