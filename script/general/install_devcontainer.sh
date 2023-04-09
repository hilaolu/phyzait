curl https://github.com/microsoft/vscode-dev-containers/raw/main/script-library/fish-debian.sh -L | sudo bash
fish $(dirname "$0")/apply-config.fish
# fish $(dirname "$0")/fisher.fish
