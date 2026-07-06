export KEYTIMEOUT=5

function zle-keymap-select {
    if [[ $KEYMAP == "vicmd" ]]; then
        printf '\e[3 q' # underscore
    fi

    if [[ $KEYMAP == "main" || $KEYMAP == "viins" ]]; then
        printf '\e[5 q' # beam
    fi
}

zle -N zle-keymap-select
bindkey -v

printf '\e[5 q' # default mode is INSERT