function rm
    set current (date '+%s')
    set user (whoami)
    set trash_bin /tmp/$user/trash/t-$current
    
    mkdir -p $trash_bin
    
    for trash in $argv
        if test -e $argv
            mv $trash $trash_bin
        end
    end
    
end