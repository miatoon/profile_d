function echo_header_center() {
    local text=$1
    local pad_char=$2
    local columns=$3
    [ -z "${pad_char}" ] && pad_char="="
    [ -z "${columns}" ] && columns=$(tput cols)

    # Create a 300-length string with only |pad_char|
    local padding="$(printf '%0.1s' ${pad_char}{1..300})"
    local  left=$(( ($columns - 1 - ${#text}) /2 ))
    local right=$(( ($columns - 2 - ${#text}) /2 ))

    # Print centered
    #   - print |padding|, cutting it to |left| length
    #   - print the |text|
    #   - print |padding|, cutting it to |right| length
    printf '%*.*s %s %*.*s\n' 0 "${left}" "${padding}" "${text}" 0 "${right}" "${padding}"
}

function echo_header_left() {
    local text=$1
    local pad_char=$2
    local columns=$3
    [ -z "${pad_char}" ] && pad_char="="
    [ -z "${columns}" ] && columns=$(tput cols)

    # Create a 300-length string with only |pad_char|
    local padding="$(printf '%0.1s' ${pad_char}{1..300})"
    local right=$(( $columns - 1 - ${#text} ))

    # Print on the left
    #   - print the |text|
    #   - print |padding|, cutting it to |right| length
    printf '%s %*.*s\n' "${text}" 0 "${right}" "${padding}"
}

function echo_header_right() {
    local text=$1
    local pad_char=$2
    local columns=$3
    [ -z "${pad_char}" ] && pad_char="="
    [ -z "${columns}" ] && columns=$(tput cols)

    # Create a 300-length string with only |pad_char|
    local padding="$(printf '%0.1s' ${pad_char}{1..300})"
    local left=$(( $columns - 1 - ${#text} ))

    # Print on the right
    #   - print |padding|, cutting it to |left| length
    #   - print the |text|
    printf '%*.*s %s\n' 0 "${left}" "${padding}" "${text}"
}

    # if [ "${pad_char}" == "*" ]; then
    #     # Special case for '*': it can't be used with the "printf" command as it will try to list
    #     # the files present in the current directory which match the "{1..300}" loop. SO any files
    #     # containing a number (between 1 and 300) in its name will be used during the "printf"
    #     # command resulting in a "padding" variable with other characters not expected.
    #     #
    #     # The solution is to use a less-efficient but error-prone loop.
    #     local -i loop=0
    #     while [ $loop -lt $columns ]; do
    #         padding+=${pad_char}
    #         loop=$(( loop + 1 ))
    #     done
    # else
    # fi
