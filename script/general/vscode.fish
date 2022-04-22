pushd .

set DIR (dirname (status --current-filename))
source $DIR/include.fish

cd conf

set configs_dir (pwd)
set home_dir $HOME 



mkdir -p ~/.config/Code/User
mkdir -p /tmp/hilaolu/trash

#[ -d "$home_dir/.config/fish" ] && mv ~/.config/fish /tmp/hilaolu/trash  
#rm $home_dir/.config/fish 

ln -s $configs_dir/vscode/* ~/.config/Code/User/

popd
