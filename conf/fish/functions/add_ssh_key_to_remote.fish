function add_ssh_key_to_remote
    set key (cat ~/.ssh/id_ed25519.pub)
    ssh $argv "mkdir -p .ssh && echo $key >> .ssh/authorized_keys"  
end


