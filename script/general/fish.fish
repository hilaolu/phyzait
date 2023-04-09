pushd .

set DIR (cd (dirname (status -f)); and pwd) 
# set DIR (dirname (status --current-filename))
source $DIR/include.fish

cd $DIR/../../conf

set configs_dir (pwd)
set home_dir $HOME 

mkdir -p /tmp/hilaolu/trash
mkdir -p ~/.config

#[ -d "$home_dir/.config/fish" ] && mv ~/.config/fish /tmp/hilaolu/trash  
rm $home_dir/.config/fish 

ln -s $configs_dir/fish ~/.config/
cp ~/.config/fish/fish_variables.example ~/.config/fish/fish_variables

popd
