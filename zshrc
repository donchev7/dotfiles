# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/bobby/.oh-my-zsh
export PROMPT_EOL_MARK=""
export PATH=$PATH:/home/bobby/Projects/git-aliae/bin
export SUBSCRIPTION_ID=e093d971-3907-4ae4-9221-d7994f3e6acb

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="oxide"
tmux source-file ~/.tmux.conf

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

#if which tmux 2>&1 >/dev/null; then
#  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#    tmux attach -t hack || tmux new -s hack; exit
#  fi
#fi
export EDITOR='vim'

VIRTUALENVWRAPPER_PYTHON="/usr/bin/python3"
PROJECT_HOME="/home/bobby/Projects"


#source /home/uidn6484/.local/bin/virtualenvwrapper.sh
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}
bindkey -s '^G' ' | grep '
# Show the entries in a directory whenever you cd in
function chpwd {
	ls --color=auto
}
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z kubectl npm tmux)

DEFAULT_USER="{I}"

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/tmux/tmux_pane_words.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"
alias httpdump="sudo tcpdump -i eth0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias folder="xdg-open ."
alias gb="git branch"
alias gbr="git branch -r"
alias gs="git status"
alias h="history"
alias pss="ps -ef"
alias donchev="ssh -i ~/.ssh/WNL_key bobby@donchev.is -p 7447"
alias donchevproxy="~/Desktop/WNLtunnel.sh"
alias azure="az login --tenant thatisnomoon.io"
alias kc="kubectl"
alias clip="xclip -selection c"
alias paste="xclip -selection c -o"
alias context="kc config use-context"

source ~/.functions


# Nodejs
export NODEJS_HOME=/usr/local/lib/nodejs/node-v8.10.0
export PATH=$NODEJS_HOME/bin:$PATH
#NPM_PACKAGES="/home/bobby/.npm-packages"
#PATH="$NPM_PACKAGES/bin:$PATH"
#unset MANPATH
#export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
#export PATH=~/.npm-global/bin:$PATH
#export PATH=$PATH:/usr/local/go/bin
#export GOPATH=$(go env GOPATH)
