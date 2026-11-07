export AUTOLOADS=()

function zshrc {
    # Fix delay issues when switching modes
    export KEYTIMEOUT=5

    function zle-line-init {
        # shellcheck disable=SC2317
        case "$KEYMAP" in
            vicmd) printf "\e[3 q" ;; # underscore cursor
            *)     printf "\e[5 q" ;; # beam cursor
        esac
    }

    function zle-keymap-select {
        # shellcheck disable=SC2317
        case "$KEYMAP" in
            vicmd) printf "\e[3 q" ;; # underscore cursor
            *)     printf "\e[5 q" ;; # beam cursor
        esac
    }

    bindkey -v

    # Make backspace work like expected
    bindkey '^?' backward-delete-char
    bindkey '^H' backward-delete-char

    zle -N zle-line-init
    zle -N zle-keymap-select

    printf '\e[5 q' # default mode is INSERT
}