# Link config
mv ~/.vimrc ~/.vimrc_backup
ln -s $(pwd)/.vimrc ~/.vimrc

mv ~/.vim ~/.vim_backup
mv ~/.vim ~/.vim_backup
ln -s $(pwd)/.vim ~/.vim

#
# The Vundle.vim is cloned into .vim already. Nov 30, 2025
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
