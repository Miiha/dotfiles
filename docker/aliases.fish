abbr -a d docker
abbr -a dc docker-compose
alias docker-vm 'docker run -it --rm --privileged --pid=host alpine:edge nsenter -t 1 -m -u -n -i sh'
