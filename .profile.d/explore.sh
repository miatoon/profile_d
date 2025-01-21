if [[ "${OS}" =~ "Windows" ]] ; then
    function explore() {
        explorer $(cygpath -w "$1")
    }
fi