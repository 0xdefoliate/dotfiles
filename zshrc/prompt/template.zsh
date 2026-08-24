function precmd {
    vcs_info
}

function setps {
    PS1=""

    if [ -n "$vcs_info_msg_0_" ]; then
        PS1="=> %B${vcs_info_msg_0_}%b"$'\n'
    fi

    PS1+='%F{%(?.green.red)}%1~%f %B›%b '
}

zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST

precmd_functions+=(setps)