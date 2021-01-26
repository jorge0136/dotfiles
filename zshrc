# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git salesforce-cli-zsh-completion
)

source $ZSH/oh-my-zsh.sh

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
#Sublime text
export PATH=./node_modules/:$PATH
export EDITOR='nvim'

# ls alias
alias ls='ls -a'

# Tesla project shortcuts
alias @dotfiles='cd $HOME/.dotfiles'
alias @tesla='cd $HOME/Documents/Projects/tesla'
alias @adapter='cd $HOME/Documents/Projects/tesla/projects/tesla-adapter'
alias @auth='cd $HOME/Documents/Projects/tesla/projects/tesla-auth'
alias @benchmarking='cd $HOME/Documents/Projects/tesla/projects/oe-core-benchmark'
alias @cheatsheet='cd $HOME/Documents/Projects/cheat-sheets'
alias @data-point='cd $HOME/Documents/Projects/tesla/projects/tesla-data-point'
alias @deployment='cd $HOME/Documents/Projects/tesla/projects/tesla-deployment'
alias @e3os-atom-api='cd $HOME/Documents/Projects/e3os/e3os-atom-api'
alias @oe-core-python='cd $HOME/Documents/Projects/oe-core-python'
alias @exercism='cd $HOME/Exercism'
alias @proxy='cd $HOME/Documents/Projects/tesla/projects/tesla-proxy'
alias @site='cd $HOME/Documents/Projects/tesla/projects/tesla-site'
alias @ui='cd $HOME/Documents/Projects/tesla/projects/tesla-ui'
alias @weather='cd $HOME/Documents/Projects/tesla/projects/tesla-weather'

# Other system shortcuts
alias @projects='cd $HOME/Documents/Projects'

#docker aliases
alias dcb='docker-compose build'
alias dcr='docker-compose run --rm'
alias dc='docker-compose'
alias dc-nuke='echo "docker-compose down -v --rmi all --remove-orphans && docker system prune --all --force --volumes" && docker-compose down -v --rmi all --remove-orphans && docker system prune --all --force --volumes'
alias dco="code $HOME/Documents/Projects/tesla/docker-compose.override.yml"

# Current alias to authorize gcloud locally for dev kubernetes project.
alias k="kubectl"

# Alias to edit this document
alias editdotfile="code ~/.zshrc"

# Ksonnet env vars
export CURRENT_CONTEXT=$(kubectl config current-context)
export CURRENT_CLUSTER=$(kubectl config get-contexts $CURRENT_CONTEXT | tail -1 | awk '{print $3}')
export CURRENT_USER=$(kubectl config get-contexts $CURRENT_CONTEXT | tail -1 | awk '{print $4}')

# Python executable
export PATH="$PATH:$HOME/python/bin"

# iterm shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add `krew` kubectl plugin manager to path
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Go
export PATH="$PATH:$HOME/go/bin"
export GOPATH="$HOME/go"
alias @gae='cd /Users/tgeorge/Documents/Projects/hello-world-gae'
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# ruby version init command
eval "$(rbenv init -)"
# python version init command
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# environmental variable init command
eval "$(direnv hook zsh)"
eval "$(nodenv init -)"

# Allow current dir's bin to be in path.
export PATH="./bin:$PATH"

alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tgeorge/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tgeorge/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tgeorge/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tgeorge/google-cloud-sdk/completion.zsh.inc'; fi

