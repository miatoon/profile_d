function explore-with-git-bash() {
    (
        cd "$1" && nohup.exe /c/Program\ Files/Git/git-bash.exe &> /dev/null
    ) &
}

function wpwd() {
    cygpath --windows "$(pwd)"
}
