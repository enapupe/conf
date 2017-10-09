# Path to your oh-my-zsh installation.
export ZSH=/Users/iacami/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# DISABLE_AUTO_TITLE="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias rnext='find . -depth -name "*.$0" -exec sh -c \'mv "$1" "${1%.$0}.$1"\' _ {} \;'
alias tempo='curl wttr.in/Florianopolis'
zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'
alias jsc=/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc
alias canaryunsafe="open /Applications/Google\ Chrome\ Canary.app --args --disable-web-security --user-data-dir='/Users/iacami/tmp'"
alias canaryremote="open /Applications/Google\ Chrome\ Canary.app --args --remote-debugging-port=9222 --disable-web-security --user-data-dir='/Users/iacami/tmp'"

versao() {
  if [[ -z $1 ]]; then
    cat package.json | grep \"version\":\ | sed s/\"version\":\ //
  else
    cat $1/package.json | grep \"version\":\ | sed s/\"version\":\ //
  fi
}
alias got=git

cores () {
  egrep -oi '#[a-f0-9]{6}' $1 | sort | uniq
}

export NODE_ENV=development
alias nom=npm
export PGHOST="localhost"
mkd () {
  mdv $1 | more -R
}

alias processoporta='sudo lsof -iTCP -sTCP:LISTEN -n -P'
alias lgtm='echo "http://bit.do/lgtm" | pbcopy'

export WORKON_HOME=$HOME/Dev/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export MYSQL_HOST='127.0.0.1'
alias githubtoken='echo "2e66899676636126f6ea7de3a6c08ec565de53b0"'
alias abreaporta="curl http://192.168.0.27/cgi-bin/unlock.cgi"
alias freewifi="sudo ifconfig en0 ether `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(thefuck --alias)
