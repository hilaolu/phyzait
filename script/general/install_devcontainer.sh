export DEBIAN_FRONTEND=noninteractive
mkdir -p ~/.config
cp $(dirname "$0")/../../conf/fish ~/.config -r
curl -L https://github.com/microsoft/vscode-dev-containers/raw/main/script-library/fish-debian.sh | sudo bash
echo "fish -c 'fisher install IlanCosman/tide@v5'" | bash