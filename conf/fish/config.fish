if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x BAT_THEME "OneHalfLight"
    fish_add_path $HOME/.local/bin
    fish_add_path $HOME/.cargo/bin
    
    source $HOME/.config/fish/fish_alias.fish
    
    set -x LANG "en_US.UTF-8"
    set -x LC_ALL "en_US.UTF-8"
    set -x EDITOR "code"

    if type -q "direnv" 
        direnv hook fish | source
    end
    
end


