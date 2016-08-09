# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# plugins
plugins=(git, zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh
export PATH=~/.composer/vendor/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
export PATH=/Users/matthias/Library/Android/sdk/platform-tools:$PATH
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

alias please='sudo'

# ls aliases
alias ll='ls -lG'
alias l='ls -lAhG'
alias ls='ls -G'
alias lsd='ls -Gal | grep ^d' # Only list directories, including hidden ones
alias lf='/bin/ls -rt|tail -n1' # list last changed file

# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias c='clear'

# git aliases
alias gg="git log --oneline --all --abbrev-commit --graph --decorate --color"
alias gis="git status -s"
alias gd="git diff"
rgc() { git commit -m"`curl -s http://whatthecommit.com/index.txt`"; } #random git commit message
function gcom() { git commit -m $1; }
function gi() { wget http://www.gitignore.io/api/$1 -O ./.gitignore ;}
alias gpanic="git checkout ."

alias swift="xcrun swift"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}


alias start_mongodb='mongod --config /usr/local/etc/mongod.conf'


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ -f ~/.zshenv ]; then
    source ~/.zshenv
fi
alias appcode="open -a AppCode.app"