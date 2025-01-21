
function parallel-one() {
    parallel --halt now,fail=1 --ungroup -j1 "$@"
}

function parallel-one-continue-on-fail() {
    parallel -j1 "$@"
}

alias parallel="parallel -j18"
