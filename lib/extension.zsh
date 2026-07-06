function ls_ext {
    local cmd="basename"

    if [[ $2 == "--with-paths" ]]; then
        cmd="realpath"
    fi

    echo "$($cmd "$1"/zshrc/*/)"
}
