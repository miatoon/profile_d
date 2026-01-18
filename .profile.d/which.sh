actual_which=$(which which 2>/dev/null)
if [ "${actual_which}" == "/usr/bin/which" ]; then
    # `which` is the default one in the system, create a better `which` (based
    # on the Fedora `which` definition)
    function which()
    {
        local which_declare="declare -f" # In bash
        # local which_declare="typeset -f" # In Zsh, Ksh, or Mksh
        (alias; eval ${which_declare}) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot "$@"
    }
fi
