def "my_pub_key" [] {
    if ( $"($env.HOME)/.ssh/id_rsa.pub" | path exists) {
        cat $"($env.HOME)/.ssh/id_rsa.pub" 
    }
    
    if ( $"($env.HOME)/.ssh/id_25519.pub" | path exists) {
        cat $"($env.HOME)/.ssh/id_25519.pub" 
    }
}

def greet [name?: string] {
  if ($name == null) {
    echo "hello, I don't know your name!"
  } else {
    echo "hello " $name | str collect
  }
}

def ac [message?: string] {
    
    if ($message == null) {
        let-env message = "update"
    }
    
    git add .
    git commit -m $"$message"

}

def acp [message?: string] {
    
    ac $"$message"
    git push
    
}

def "mem" [] {
    ps | select name mem | sort 
}