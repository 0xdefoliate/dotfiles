export AUTOLOADS=("compinit" "bashcompinit")
export REQUIRED_PROGRAMS=("ng")

function zshrc {
    # shellcheck disable=SC1090
    source <(ng completion script)
}