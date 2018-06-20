# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(bundler docker git jsontools rails tmux yarn)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# aliases
alias be="bundle exec"
alias gap="git add -p"
alias gst="git status"
alias gpp="git pull --rebase && git push"
alias cleanbranch="git branch --merge | grep -v master | xargs git branch -D"
alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias startmysql="brew services start mysql"
alias stopmysql="brew services stop mysql"
alias tf="terraform"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mleger/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/mleger/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mleger/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/mleger/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
