# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

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

export EDITOR='vim'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias gap="git add -p"
alias gpp="git pull --rebase && git push"
alias gst="git status"
alias cleanbranch="git branch --merge | grep -v master | xargs git branch -D"

alias be="bundle exec"

alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias startmysql="brew services start mysql"
alias stopmysql="brew services stop mysql"

alias tf="terraform"

# Include Google Cloud SDK if exists

if [ -f '~/.google-sdk.zsh' ]; then source ~/.google-sdk.zsh; fi
