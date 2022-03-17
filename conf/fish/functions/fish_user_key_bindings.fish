function fish_user_key_bindings
    fish_vi_key_bindings
    bind -M default j backward-char 
    bind -M default \; forward-char 
    bind -M default k history-search-backward 
    bind -M default l history-search-forward 

    bind -M insert \cc 'set fish_bind_mode default; commandline -f repaint'   
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
    
    bind -M insert \ck history-search-backward
    bind -M insert \cl history-search-forward
    bind -M insert \ch 'cd ..; commandline -f repaint'   
    bind -M insert \cs add_sudo
    
end
