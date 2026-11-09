export AUTOLOADS=()

function zshrc {
    # provide command-line aliases for some IntelliJ IDEs

    apps=("CLion" "PyCharm" "WebStorm")

    for app in "${apps[@]}"; do
        for application_directory in "/Applications" "$HOME/Applications"; do
            local base_path="$application_directory/$app.app"

            if [ ! -d "$base_path" ]; then
                continue
            fi

            # IntelliJ binaries typically available for command-line consumption
            # are found in its app bundle.
            export PATH="$PATH:$base_path/Contents/MacOS"
        done
    done

    unset apps
}