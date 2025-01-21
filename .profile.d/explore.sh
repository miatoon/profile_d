if [[ "${OS}" =~ "Windows" ]] ; then
    function explore() {
        local path="$1"
        [ "${path}" == "." -a ${#path} -eq 1 ] && path="$(pwd)" || path="$(pwd)/${path}"
        local cpath="$(cygpath -w "${path}")"
        # echo "[explore] \"$1\" -> \"$path\" -> \"$cpath\""
        explorer "${cpath}"
    }

    which wt.exe >& /dev/null
    if [ $? -eq 0 ]; then
        function explore-terminal() {
            local path="$1"
            [ "${path}" == "." -a ${#path} -eq 1 ] && path="$(pwd)" || path="$(pwd)/${path}"
            local cpath="$(cygpath -w "${path}")"
            (
                nohup.exe wt.exe -d "${cpath}" &> /dev/null
            ) &
        }
    fi
fi