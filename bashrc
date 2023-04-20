#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# added by me to setup default text editor
export EDITOR=nvim

# added by me for texlive 
PATH=/home/niraj/texlive/bin/x86_64-linux:$PATH
MANPATH=/home/niraj/texlive/texmf-dist/doc/man:$MANPATH
INFOPATH=/home/niraj/texlive/texmf-dist/doc/info:$INFOPATH

##added by me for julia
PATH=/home/niraj/julia/bin/:$PATH

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/home/niraj/.local/bin/micromamba";
export MAMBA_ROOT_PREFIX="/home/niraj/micromamba";
__mamba_setup="$('/home/niraj/.local/bin/micromamba' shell hook --shell bash --prefix '/home/niraj/micromamba' 2> /dev/null)"
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

# added by me for autocd
shopt -s autocd
