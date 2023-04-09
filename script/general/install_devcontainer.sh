sudo apt update && sudo apt install fish -y
sleep 1
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
# fish script/general/apply-config.sh
