#
# After you run this script, open a tmux seesion,
# press [Prefix + I] (capital i, as in Install) to fetch the plugin
#

# Link config
mv ~/.tmux.conf ~/.tmux.conf_backup
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
