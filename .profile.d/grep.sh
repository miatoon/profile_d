# grep: warning: GREP_OPTIONS is deprecated; please use an alias or script
#
#export GREP_OPTIONS='--color=auto --exclude-dir={.svn,.git}'

alias grep='grep --color=auto --exclude-dir={.svn,.git}'
alias egrep='egrep --color=auto --exclude-dir={.svn,.git}'
alias fgrep='fegrep --color=auto --exclude-dir={.svn,.git}'
alias hgrep='history | grep --color=auto'

function pygrep() {
    folder=${1:-.}
    test -d "${folder}" && shift || folder=.
    find "${folder}" -name "*.py" | xargs grep --color=auto "$@"
}