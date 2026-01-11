#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

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

. "$HOME/.local/bin/env"
