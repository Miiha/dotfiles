# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
#
#if $(gls &>/dev/null)
#then
#  alias ls="gls -F --color"
#  alias l="gls -lAh --color"
#  alias ll="gls -l --color"
#  alias la='gls -A --color'
#fi

alias ll 'ls -lah'
alias la 'ls -lah'
alias c 'clear'
alias map "xargs -n1"
alias st 'open -a SourceTree'
abbr o 'open'

alias help 'tldr'
alias du 'ncdu --color dark -rr -x'
alias cat 'bat'

# mv, rm, cp
alias mv 'mv -v'
alias rm 'rm -i -v'
alias cp 'cp -v'

alias hosts 'sudo $EDITOR /etc/hosts'
