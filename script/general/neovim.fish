pushd .

set DIR (dirname (status --current-filename))
source $DIR/include.fish

cd conf

set configs_dir (pwd)
set home_dir $HOME 

mkdir -p /tmp/hilaolu/trash
mkdir -p ~/.local/share
mkdir -p ~/.config

#[ -d "$home_dir/.config/nvim" ] && mv ~/.config/nvim /tmp/hilaolu/trash
#[ -d "$home_dir/.local/share/nvim" ] && mv ~/.local/share/nvim /tmp/hilaolu/trash

rm $home_dir/.config/nvim
sleep 1
rm $home_dir/.local/share/nvim

#ln -s $configs_dir/nvim-local ~/.local/share/nvim
ln -s $configs_dir/nvim ~/.config 

popd
