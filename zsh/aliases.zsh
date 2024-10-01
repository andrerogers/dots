alias ls="ls --color=auto"
alias l="ls --color=auto -la"
alias ll="eza"
alias c="clear"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias n="nvim"
alias t="tmux"
alias tp="tmuxp"
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias df="df -h" # Human readable sizes
alias cd="z"

oo() {
  cd $HOME/brain && n
}
alias oo="oo"
