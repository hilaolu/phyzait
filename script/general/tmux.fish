pushd .

set DIR (cd (dirname (status -f)); and pwd) 
# set DIR (dirname (status --current-filename))
source $DIR/include.fish

cd $DIR/../../conf

set configs_dir (pwd)
set home_dir $HOME 

mkdir -p /tmp/hilaolu/trash

# [ -d "$home_dir/.tmux" ] && mv ~/.tmux /tmp/hilaolu/trash  
# [ -e "$home_dir/.tmux.conf" ] && mv ~/.tmux.conf /tmp/hilaolu/trash  
# [ -e "$home_dir/.tmux.conf.local" ] && mv ~/.tmux.conf.local /tmp/hilaolu/trash  

rm $home_dir/.tmux
rm $home_dir/.tmux.conf
rm $home_dir/.tmux.conf.local

ln -s $configs_dir/tmux ~/.tmux
ln -s $configs_dir/tmux/.tmux.conf ~
ln -s $configs_dir/tmux/.tmux.conf.local ~

popd
