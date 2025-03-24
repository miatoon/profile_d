which code >& /dev/null
if [ $? -ne 0 ]; then
    if [ -f "${HOME}/AppData/Local/Programs/Microsoft VS Code/Code.exe" ]; then
        alias code='"${HOME}/AppData/Local/Programs/Microsoft VS Code/Code.exe"'
    elif [ -f "/c/Program Files/Microsoft\ VS\ Code/bin/code.exe" ]; then
        alias code='"/c/Program Files/Microsoft\ VS\ Code/bin/code"'
    fi
fi

which code >& /dev/null
if [ $? -eq 0 ]; then
    alias cn='code -n'
fi
