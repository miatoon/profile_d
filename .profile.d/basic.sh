# The "ls -F" option is more eager then the "ls --file-type" option, as the "-F"
# use an open-file event which can trigger any VFS system.
alias ls='ls --file-type --color=never' # Ending-character file type
alias la='ls -A'                        # all but . and ..

alias rm='rm -i'
