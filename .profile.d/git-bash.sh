if [ -f "/c/Program Files/Git/git-bash.exe" ]; then
    function explore-with-git-bash() {
        (
            cd "$1" && nohup.exe "/c/Program Files/Git/git-bash.exe" &> /dev/null
        ) &
    }
fi

function wpwd() {
    cygpath --windows "$(pwd)"
}
