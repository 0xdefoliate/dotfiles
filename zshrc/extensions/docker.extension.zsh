export AUTOLOADS=("compinit")
export REQUIRED_PROGRAMS=("docker")

function zshrc {
    # shellcheck disable=SC1090
    source <(docker completion zsh)
}