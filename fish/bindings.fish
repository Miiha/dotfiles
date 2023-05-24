#set fish_key_bindings fish_vi_key_bindings

#function fish_user_key_bindings
	#bind \ee forward-word
	#bind -e \ev
	#bind \ec edit_command_buffer
#end

bind \e\[1\;5C 'nextd; commandline -f execute'
bind \e\[1\;5D 'prevd; commandline -f execute'
