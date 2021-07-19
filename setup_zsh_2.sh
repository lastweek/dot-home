# Link zsh config
mv ~/.zshrc ~/.zshrc_backup
ln -s $(pwd)/.zshrc ~/.zshrc

# Copy themes
mv ~/.oh-my-zsh/themes/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme.backup
ln -s $(pwd)/oh-my-zsh/themes/robbyrussell.zsh-theme

# Clone plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
