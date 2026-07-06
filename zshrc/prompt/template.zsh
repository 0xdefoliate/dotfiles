function precmd {
    vcs_info
}

function setps {
    PS1='%F{%(?.green.red)}%1~%f %B›%b '
    RPS1="%F{red}${vcs_info_msg_0_}%f"
}

zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST

precmd_functions+=(setps)