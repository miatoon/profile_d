if [[ "${OS}" =~ "Windows" ]] ; then
    if [ -f "/c/Program Files/Notepad++/notepad++.exe" ]; then
        alias npp='"/c/Program Files/Notepad++/notepad++.exe"'
    fi
fi
