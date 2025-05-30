# TODO Rename this file "python.sh"
function venv-activate() {
    local venv_path="$1"
    if [ -z "${venv_path}" ]; then
        echo >&2 "Error: The path \"${venv_path}\" is unreachable!"
        return 2
    fi
    if [[ "${OS}" =~ "Windows" ]] ; then
        venv_path=$(cygpath "${venv_path}")
        source "${venv_path}"/Scripts/activate
    else
        source "${venv_path}"/bin/activate
    fi
    source "${venv_path}"/Scripts/activate
}

if [ -d "${HOME}/bin/.venv-home-bin" ]; then
    function venv-activate-home-bin() {
        venv-activate "${HOME}\bin\.venv-home-bin"
    }
fi

# Bash completion (using the "tab" key) is extremely slow to find the
# 'deactivate' command. This function is a workaround.
function venv-deactivate() {
    deactivate
}
