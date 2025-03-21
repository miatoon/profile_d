if [ -d ~/.profile.d ]; then
    for fic in ~/.profile.d/*.sh; do
        source "${fic}"
    done
fi
