# Installing dependencies
sudo pacman -S curl git zsh

# Changing default shell to zsh
chsh -s /bin/zsh

# Installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Installing zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Creating aliases and other configurations
echo alias cls="clear" >> $HOME/.zshrc

FINAL_MESSAGE="The script has finished it's execution.
Now, there are just a few manual steps you need to perform:
For the zsh autocomplete and syntax highlighting plugins, edit the $HOME/.zshrc file, and in the oh-my-zsh plugins section,
add zsh-autosuggestions and zsh-syntax-highlighting.
After that, please reboot the system to complete any shell changes.
If there are any errors, please contact the developer."

echo $FINAL_MESSAGE

# Written by Victor Paro (Terrible-Developer). This script
# currently has no license, but if it ends up having, it will have a free license like GPL or Apache.
