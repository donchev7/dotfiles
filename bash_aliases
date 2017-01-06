#  OS Related Aliases #
alias ll="ls -lhFG --color=auto"
alias ls="ls -FG --color=auto"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias dir="ll"
alias gemlist='gem list | egrep -v "^( |$)"'
alias mbp='mate ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias folder="xdg-open ."

# Docker
alias danglingv="docker volume rm $(docker volume ls -qf dangling=true)"
alias dangling="docker rmi $(docker images -q -f dangling=true)"

# GIT
alias gb='git branch'
alias gba='git branch -a'
alias gcav='git commit -av'
alias gca='git commit -a'
alias gd='git diff'
alias gl='git pull origin master'
alias gp='git push origin master'
alias gp?='git log --pretty=oneline origin/master..HEAD'
alias gs='git status'
alias gpcd='git push origin master && cap deploy'
alias gpom='git pull origin master'
alias gith='hub' # Not making hub default. But I recommend it.

# Utilities
alias grep='GREP_COLOR="1;37;45" LANG=C grep --color=auto'
alias h="history"
alias httpdump="sudo tcpdump -i eth0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias ip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
