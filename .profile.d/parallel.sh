if [[ "${OS}" =~ "Windows" ]] ; then
    export PATH="$PATH:$HOME/parallel_bin"
fi

function parallel-one() {
    parallel --halt now,fail=1 --ungroup -j1 "$@"
}
