if [[ "${OS}" =~ "Windows" ]] ; then
    which wt.exe >& /dev/null
    if [ $? -eq 0 ]; then
        function explore-terminal() {
            (
                nohup.exe wt.exe -d "$1" &> /dev/null
            ) &
        }
    fi
fi
