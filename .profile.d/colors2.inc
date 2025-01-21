# Source this file into your shell script

STYLE_NORMAL='0'
STYLE_BOLD='1'
STYLE_DIM='2'
STYLE_UNDERLINE='4'
#STYLE_BLINK='5' # Doesn't work with not full tty terminal
STYLE_REVERSE='7'
STYLE_HIDDEN='8' # Can be useful for password

COLOR_DEFAULT='39'
COLOR_BLACK='30'
COLOR_RED='31'
COLOR_GREEN='32'
COLOR_YELLOW='33'
COLOR_BLUE='34'
COLOR_MAGENTA='35'
COLOR_CYAN='36'
COLOR_WHITE='97'

BG_COLOR_DEFAULT='49'
BG_COLOR_BLACK='40'
BG_COLOR_RED='41'
BG_COLOR_GREEN='42'
BG_COLOR_YELLOW='43'
BG_COLOR_BLUE='44'
BG_COLOR_MAGENTA='45'
BG_COLOR_CYAN='46'
BG_COLOR_WHITE='107'

function echo_color()
{
    # set +x
    local header='\e['
    local reset='\e[0m'

    local msg=$(cat --show-ends -)  # TODO handle the case the input came from the stderr
    local text_color=${1:-$COLOR_DEFAULT}
    local text_attribute=${2:-$STYLE_NORMAL}
    local background_color=${3:-$BG_COLOR_DEFAULT}

    local combination="${text_attribute};${text_color};${background_color}"

    # If the 'msg' already had a newline character, simply display it and removed the '$' character added by |cat|.
    # Else echo with the -n option to prevent from adding a newline character the user don't want.
    local add_newline_opt=''
    [[ "${msg}" =~ \$$ ]] && msg="${msg%$}" || add_newline_opt='-n'

    echo -e ${add_newline_opt} "\e[${combination}m${msg}${reset}"
}
