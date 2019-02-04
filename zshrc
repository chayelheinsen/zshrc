# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/chayelheinsen/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pygmalion-custom"

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
plugins=(wd git brew bundler gem ruby rails sudo docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$PATH:/usr/local/m-cli
export GOPATH=$HOME/Go
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export EDITOR="vim"

# Alias
alias zshrc="$EDITOR ~/.zshrc"
alias cdev="cd ~/Developer"
alias cdios="cdev && cd iOS"
alias cdruby="cdev && cd Ruby"
alias copyzshrc="cat ~/.zshrc | pbcopy"
alias s="spotify"
alias afk="pmset sleepnow"
alias buuc="brew update && brew upgrade && brew cleanup"
alias rshell="echo 'Reloading...' && . ~/.zshrc && clear"
alias reload=". ~/.zshrc"
alias gac="git add . && git commit -m"
alias gdh="git diff --color | diff-so-fancy"
alias gbl="gb | cat"
alias gblr="gb -r | cat"
alias gdb="git branch -d"
alias https="http --default-scheme=https"
alias aws_vn="aws --profile vn"
alias ss="open -a ScreenSaverEngine"
alias drw="docker-compose run --rm web"
alias drr="drw rspec && drw rubocop"

function update_zshrc() {
  wd dev zshrc
  git pull
  cp zshrc ~/.zshrc
  wd ..
  reload
}

function save_zshrc() {
  wd dev zshrc
  git pull
  cp ~/.zshrc zshrc
  gac "Update zshrc"
  gp
  wd ..
}

function update_warprc() {
  wd dev zshrc
  git pull
  cp warprc ~/.warprc
  wd ..
  reload
}

function save_warprc() {
  wd dev zshrc
  git pull
  cp ~/.warprc warprc
  gac "Update warpc"
  gp
  wd ..
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(rbenv init -)"
