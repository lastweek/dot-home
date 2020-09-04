# dot-home
General Scripts

1. Copy VIM config
	cp -r .vim/ ~/
	cp -r .vimrc ~/


Setup vbundle:
1. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
2. vim +PluginInstall +qall

Setup TMUX
1. git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
2.
   # type this in terminal if tmux is already running
   $ tmux source ~/.tmux.conf
3. Installing plugins
   Press prefix + I (capital i, as in Install) to fetch the plugin.
