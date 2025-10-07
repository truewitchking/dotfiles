set fish_greeting ""

if status is-interactive
    if type -q tmux
        if not test -n "$TMUX"
            tmux attach-session -t main; or tmux new-session -s main
        end
    end
end
