export 'PS1=\[\e]0;\w\a\]\n\[\e[91m\][\u@\h \[\e[33m\]\w \[\e[94m\]$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\e[91m\]]\[\e[0m\]\$\n'

# aliases for git
alias gv='git vis'
alias ga='git add'
alias gaa='ga --all'
alias gst='git status -s'
alias gco='git checkout'
alias gci='git commit'

# welcome message
echo "Always code as if the guy who ends up maintaining your code"
echo "will be a violent psychopath who knows where you live."
echo "                            /John F. Woods/"
