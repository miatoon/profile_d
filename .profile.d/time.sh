alias timestampc="date '+%Y%m%d%H%M%S'"  # Compact
alias timestamp="date '+%Y%m%d_%H%M%S'"  # Default
alias timestamph="date '+%Y-%m-%d_%H-%M-%S'"  # Human

function timestamp_to_date() {
    local timestamp=$1
    local milli=""
    if [ ${#timestamp} -gt 14 ]; then
        echo "bad timestamp"
        return
    fi
    if [ ${#timestamp} -gt 10 ]; then
        milli=${timestamp:10}
        timestamp=${timestamp:0:10}
        res=$(date -d @${timestamp} +'%Y-%m-%d %H:%M:%S')
        echo "${res}.${milli}"
    else
        date -d @${timestamp} +'%Y-%m-%d %H:%M:%S'
    fi
}
