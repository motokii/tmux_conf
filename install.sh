#!/bin/sh
check_file() {
    if [ -e "$1" ]; then
        echo "Error, $1 already exists."
        echo "Please rename or remove $1."
        exit
    fi
}
check_file "$HOME/.tmux.conf"
check_file "$HOME/.tmux/tmux_conf"

echo ""
echo "Installing..."
git clone https://github.com/motokii/tmux_conf.git $HOME/.tmux/tmux_conf
ln -s $HOME/.tmux/tmux_conf/tmux.conf $HOME/.tmux.conf
