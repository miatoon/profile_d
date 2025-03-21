# TODO Rename this file "python.sh"

function pipenv-activate() {
    local venv_path="$(pipenv --venv | tr -d '\r')"
    if [ -z "${venv_path}" ]; then
        # No need to display an error as the |pipenv| command already displays a nice
        # error message.
        #
        # echo >&2 "Error: There is no pipenv environment for this folder!"
        return 2
    fi
    if [[ "${OS}" =~ "Windows" ]] ; then
        venv_path=$(cygpath "${venv_path}")
        # TODO execute the script to fix the windows activate script
        source "${venv_path}"/Scripts/activate
    else
        source "${venv_path}"/bin/activate
    fi
}