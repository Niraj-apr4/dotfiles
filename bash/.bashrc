#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='[\w]\$ '
export FONTCONFIG_PATH=~/.local/share/fonts:$FONTCONFIG_PATH

# append texlive binary to path variable 
export PATH=$PATH:/home/niraj/texlive/bin/x86_64-linux

# setup default editor $EDITOR
export EDITOR="emacs"

# append gmsh binary to path variable 
export PATH=$PATH:/home/niraj/gmsh/bin

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/niraj/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/niraj/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

export PATH=$PATH:/home/niraj/typst

. "$HOME/.local/bin/env"

# append custom scripts  
export PATH=$PATH:/home/niraj/repositories/custom_scripts/sh
export PATH=$PATH:/home/niraj/repositories/custom_scripts/
