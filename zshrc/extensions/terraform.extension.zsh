export AUTOLOADS=("compinit" "bashcompinit")
export REQUIRED_PROGRAMS=("terraform")

function zshrc {
    complete -o nospace -C "$(which terraform) terraform"

    export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

    # ensure the cache directory exists
    [ ! -d "$TF_PLUGIN_CACHE_DIR" ] && mkdir "$TF_PLUGIN_CACHE_DIR"
}