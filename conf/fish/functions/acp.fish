function acp
    
    set message "update"
    if test ! -z "$argv[1]"
        set message "$argv[1]"
    end
    
    git add .
    git commit -m "$message"
    git push
    
end