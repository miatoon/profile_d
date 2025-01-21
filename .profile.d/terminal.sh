if [[ "${OS}" =~ "Windows" ]] ; then
    function explore-terminal() {
        (
            nohup.exe wt.exe -d "$1" &> /dev/null
        ) &
    }
fi
