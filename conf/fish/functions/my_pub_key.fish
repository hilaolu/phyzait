function my_pub_key
    if test -e $HOME/.ssh/id_rsa.pub
        cat $HOME/.ssh/id_rsa.pub 
    end
    
    if test -e $HOME/.ssh/id_ed25519.pub
        cat $HOME/.ssh/id_ed25519.pub 
    end
end
