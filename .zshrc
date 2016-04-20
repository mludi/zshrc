# Path to your oh-my-zsh installation.
export ZSH=/Users/matthias/.oh-my-zsh

ZSH_THEME="agnoster"
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh
export PATH=~/.composer/vendor/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

export GOPATH=$HOME/gocode
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

completion="$(brew --prefix)/share/zsh/site-functions/go"
if test -f $completion
then
      source <(cat $completion)
fi

alias vm="ssh vagrant@127.0.0.1 -p 2222"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
DEFAULT_USER="matthias"
alias copypath='pwd|pbcopy'
