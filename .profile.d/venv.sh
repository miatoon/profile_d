function _venv-activate() { 
    local venv_path="$1"
    if [ -z "${venv_path}" ]; then
        echo >&2 "Error: The path \"${venv_path}\" is unreachable!"
        return 2
    fi
    # if [[ "${OS}" =~ "Windows" ]] ; then
    #     venv_path=$(cygpath "${venv_path}")
    #     source "${venv_path}"/Scripts/activate
    # else
    #     source "${venv_path}"/bin/activate
    # fi
    source "${venv_path}"/Scripts/activate
}

function venv-activate-bin() {
    _venv-activate "C:\Users\thoudayer\bin\.venv-home-bin"
}

# Bash completion (using the "tab" key) is extremely slow to find the
# 'deactivate' command. This function is a workaround.
function venv-deactivate() {
    deactivate
}
