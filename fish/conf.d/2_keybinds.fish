# if status is-interactive
#     set -gx fish_cursor_insert block
#     fish_vi_key_bindings default
#     bind --all --erase ctrl-m
#     bind --mode default --erase /
#     bind --mode default / fzf-history-widget
# end
if status is-interactive
    bind ctrl-comma 'prevd; commandline -f repaint'
    bind ctrl-. 'nextd; commandline -f repaint'
end
