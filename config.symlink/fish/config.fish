echo $PATH
set fisher_home /usr/local/lib/node_modules/fisherman
set fisher_config ~/.config/fisherman

source ~/.brew-credentials.local

#for file in ~/.config/fish/conf.d/*.fish
    #source $file
#end

set -gx FISH $HOME/.dotfiles
set config_files $FISH/**/*.fish

source (brew --prefix asdf)/libexec/asdf.fish

# load the path files
for file in $config_files
	
	if begin test (string match "*config.symlink*" $file);or test (string match "*install.fish" $file); end
	else	
		source $file
	end
end
bind -e \ee
bind -e \ev

# hook direnv into fish shell
direnv hook fish | source

fish_ssh_agent
