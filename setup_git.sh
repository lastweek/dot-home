mv ~/.gitconfig ~/.gitconfig_backup
mv ~/.gitalias ~/.gitalias_backup

ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitalias ~/.gitalias
