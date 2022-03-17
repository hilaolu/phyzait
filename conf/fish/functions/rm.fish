function rm
    set current (date '+%s')
    set user (whoami)
    set trash_bin /tmp/$user/trash/t-$current
    
    mkdir -p $trash_bin
    
    for trash in $argv
        mv $trash $trash_bin
    end
    
end