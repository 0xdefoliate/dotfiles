export AUTOLOADS=("compinit" "bashcompinit")
export REQUIRED_PROGRAMS=("aws")

function zshrc {
    complete -C "$(which aws_completer)" aws
}