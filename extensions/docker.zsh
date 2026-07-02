function extension_docker {
    if [[ ! -d "$HOME/.docker/bin" ]]; then
        return 1
    fi

    local output=""

    # setup docker completions

    if [[ -d "$HOME/.docker/completions" ]]; then
        rm -rf "$HOME/.docker/completions"
    fi

    mkdir ~/.docker/completions
    docker completion zsh > ~/.docker/completions/_docker

    # shellcheck disable=SC2016
    output+='FPATH="$HOME/.docker/completions:$FPATH"\n'

    # update PATH

    # shellcheck disable=SC2016
    output+='export PATH="$HOME/.docker/bin:$PATH"'

    # we have no choice but to disable this check here
    # since we need to output a \n which printf should parse.
    #
    # shellcheck disable=SC2059
    printf "$output"

    return 0
}