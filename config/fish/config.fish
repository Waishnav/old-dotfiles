#if status is-interactive
#    # Commands to run in interactive sessions can go here
#end

bind -M insert -m default jk backward-char force-repaint
bind -M insert -m default kj backward-char force-repaint

# if status is-interactive
    # Commands to run in interactive sessions can go here
# end

#fish_add_path ~/.scripts
fish_add_path ~/.local/bin
fish_add_path /usr/share/rvm/rubies/ruby-3.0.3/bin/
fish_add_path /usr/share/rvm/bin/
fish_add_path ~/.rbenv/bin/
fish_add_path ~/.rbenv/plugins/ruby-build/bin/

alias nvm="nvim"
alias py="python3"
alias logout="pkill -KILL -u waishnav"

set fish_greeting
starship init fish | source

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
