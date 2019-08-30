alias ll='ls -lA'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -lAtr'
alias scpresume="rsync --partial --progress --rsh=ssh"
alias record="script -t 2>~/record.time -a ~/record.script"
alias replay="scriptreplay ~/record.time ~/record.script"
alias pdf_concat='echo "pdftk toto1.pdf toto2.pdf cat output toto.pdf"'

# Add an "alert" alias for long running commands.  Use like so:
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias update_cf_cli='cd ~ && curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -xz && sudo mv cf /usr/local/bin/'
alias python_vendor="pip download -r requirements.txt --no-binary=:all: -d vendor"
alias dkrclean='docker rmi $(docker images -a -q)'
alias dkrvolumeprune='docker volume prune'
alias dkrrmexit='docker rm $(docker ps -a -f status=exited -q)'
alias dkrrmall='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias dkrlistvolume='docker volume ls -f dangling=true'
alias dkrhadolint='docker run --rm -i hadolint/hadolint < Dockerfile' 
alias dkrwatch='watch -n1 "docker ps -a"'
alias nm_vpn_start='nmcli conn up id client'
alias nm_show='nmcli con show'
alias nm_vpn_stop='nmcli conn down id client'
alias ssh_tunnel_example="ssh -4 -L 3306:localhost:30000 fsoigneux@server -N"
