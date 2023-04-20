# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/niraj/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# prompt (added by me)
# PROMPT='%n@%m %~ %# '
PROMPT='[%n@%m %~ ] %# '

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/home/niraj/.local/bin/micromamba";
export MAMBA_ROOT_PREFIX="/home/niraj/micromamba";
__mamba_setup="$('/home/niraj/.local/bin/micromamba' shell hook --shell zsh --prefix '/home/niraj/micromamba' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/home/niraj/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/home/niraj/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/home/niraj/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# # >>> added by me for texlive and julia >>>
# path+=('~/julia/bin')
# path+=('/home/niraj/texlive/bin/x86_64-linux')
# export path
# # <<< added by me for texlive and julia <<<
