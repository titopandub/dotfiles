alias tmux="tmux -2"
export GOPATH=$HOME/projects/go
export PATH=$PATH:$GOPATH/bin
### Added by the Heroku Toolbelt
export PATH="/usr/local/bin:/usr/local/heroku/bin:/Applications/VirtualBox.app/Contents/MacOS/:$PATH"

export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\h:\[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\]\[\e[00;37m\]\\$\n\[\e[0m\]"

eval "$(rbenv init -)"

source ~/dotfiles/tmuxinator.bash
