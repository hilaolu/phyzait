function fish_title
    set pwd prompt_pwd
    string join '' '[' (whoami) '@' $hostname ']:' (prompt_pwd) 
end
