set fish_greeting ""

if status is-interactive
    if type -q tmux
        if not test -n "$TMUX"
            tmux attach-session -t default; or tmux new-session -s default
        end
    end
end
