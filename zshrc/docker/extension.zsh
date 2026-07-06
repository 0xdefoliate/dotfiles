export AUTOLOADS=()
export MODIFIES=(
    "$HOME/.docker/completions"
    "$HOME/.docker/completions/_docker"
)

function extension::docker {
    if [[ ! -d "$HOME/.docker/bin" ]]; then
        return 1
    fi

    # setup docker completions

    if [[ -d "$HOME/.docker/completions" ]]; then
        rm -rf "$HOME/.docker/completions"
    fi

    mkdir ~/.docker/completions
    docker completion zsh > ~/.docker/completions/_docker

    return 0
}