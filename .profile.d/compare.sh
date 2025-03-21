if [[ "${OS}" =~ "Windows" ]] ; then
    # Comparison, using Devart Code-Compare
    if [ -f "/c/Program\ Files/Code\ Compare/CodeCompare.exe" ]; then
        alias cc='"/c/Program\ Files/Code\ Compare/CodeCompare.exe"'
    fi

    # # Comparison, using WinMerge
    if [ -f "/c/Program Files/WinMerge/WinMergeU.exe" ]; then
        alias wm='"/c/Program Files/WinMerge/WinMergeU.exe"'
    fi

    # # Comparison, using Beyond Compare
    if [ -f "/c/Program Files/Beyond Compare 4/BCompare.exe" ]; then
        alias bc='"/c/Program Files/Beyond Compare 4/BCompare.exe"'
    fi
fi