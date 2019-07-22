# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# welcome message
echo "Always code as if the guy who ends up maintaining your code"
echo "will be a violent psychopath who knows where you live."
echo "                            /John F. Woods/"

alias ls='ls --color=auto'

export 'PS1=\[\e]0;\w\a\]\[\e[91m\][\u@\h \[\e[33m\]\w \[\e[94m\]$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\e[91m\]]\[\e[0m\]\$ '

# aliases for git
alias gv='git vis'
alias gva='git vis --all'
alias ga='git add'
alias gaa='ga .'
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias gfrb='git fetch && git rebase --autostash'
alias gd='git diff'
alias ganw='git diff -U0 -w --no-color "$@" | git apply --cached --ignore-whitespace --unidiff-zero -'
alias gaut='echo -e "a\n*\nq\n"|git add -i'
alias gadd='ganw && gaut > /dev/null'

# more aliases
alias start_maria='sudo systemctl start mariadb'

setxkbmap us
export BACKGROUND_IMAGE="$HOME/Downloads/wallpaper.png"

export PATH="$PATH:$HOME/bin"
xrdb ~/.Xresources
