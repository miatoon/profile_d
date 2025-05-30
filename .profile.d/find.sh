function _find-dir-and-delete() {
    for search in "${@}"; do
        # Only accept folder name longer than or equal to 3
        if [ "${#search}" -ge 3 ]; then
            echo "FIND & DELETE: ${search}"
            find . -type d -name "${search}" -prune -exec echo '{}' \; -exec rm -rf '{}' \;
        fi
    done
}

function _find-file-and-delete() {
    for search in "${@}"; do
        # Only accept file name longer than or equal to 5
        if [ "${#search}" -ge 5 ]; then
            echo "FIND & DELETE: ${search}"
            find . -type f -name "${search}" -exec echo '{}' \; -exec rm -f '{}' \;
        fi
    done
}

alias find-and-delete-dirs-caches='_find-dir-and-delete "__pycache__" ".pytest_cache" ".mypy_cache" ".ruff_cache" ".cache"'
alias find-and-delete-files-dumps='_find-file-and-delete "coredump_*.7z"'
