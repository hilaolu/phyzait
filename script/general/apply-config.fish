#!/usr/bin/fish
pushd .

#git clone https://code.phyzait.moe/hilaolu/configs.git --recursive

# if not test -d conf
#     echo "conf doesn't exist, abort"
#     exit 1
# end

# set DIR (dirname (status --current-filename))
set DIR (cd (dirname (status -f)); and pwd) 
fish $DIR/fish.fish
fish $DIR/neovim.fish
fish $DIR/tmux.fish
fish $DIR/vscode.fish





popd
