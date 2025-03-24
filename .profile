if [ -d ~/.profile.d ]; then
    for fic in ~/.profile.d/*.sh; do
        if [ -r "${fic}" ]; then
            source "${fic}"
        fi
    done
    unset fic
fi
