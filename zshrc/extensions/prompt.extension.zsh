export AUTOLOADS=("vcs_info")

function zshrc {
    # shellcheck disable=SC2317
    function precmd {
        vcs_info
    }

    # shellcheck disable=SC2317
    function prompt::set_prompt_string {
        PS1=""

        # Show git branch in prompt string *if* the user is in a git repo.
        [ -n "$vcs_info_msg_0_" ] && PS1="=> %B${vcs_info_msg_0_}%b"$'\n'

        PS1+='%F{%(?.green.red)}%1~%f %B›%b '
    }

    zstyle ':vcs_info:git:*' formats '%b'
    setopt PROMPT_SUBST

    precmd_functions+=(prompt::set_prompt_string)
}