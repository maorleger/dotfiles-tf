# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export EDITOR='vim'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
bundler
docker
docker-compose
git
jsontools
rails
tmux
yarn
)

source $ZSH/oh-my-zsh.sh


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Include Google Cloud SDK if exists

if [ -f ~/.google-sdk.zsh ]; then source ~/.google-sdk.zsh; fi

if [ -f ~/.aliases ]; then source ~/.aliases; fi

# go setup
mkdir -p $HOME/workspace/go
mkdir -p $HOME/workspace/go/src/github.com/maorleger
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin
