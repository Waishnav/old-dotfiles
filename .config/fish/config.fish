#if status is-interactive
#    # Commands to run in interactive sessions can go here
#end

set fish_greeting

bind -M insert -m default jk backward-char force-repaint
bind -M insert -m default kj backward-char force-repaint

# if status is-interactive
    # Commands to run in interactive sessions can go here
# end

#fish_add_path ~/.scripts
#fish_add_path ~/.local/bin
#fish_add_path ~/.cargo/bin
#fish_add_path /usr/lib/ruby/gems/3.0.0/bin

alias nvm="nvim"

set fish_greeting

starship init fish | source

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
