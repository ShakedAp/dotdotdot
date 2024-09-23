# dotdotdot
Dotfiles and configurations for different applications:  
* ZSH
  
## Installation
1. Clone the repository (including it's submodules), and place it in the `/etc` directory:  
```
git clone --recurse-submodules -j8 git@github.com:ShakedAp/dotdotdot.git "/tmp/dotdotdot"
sudo mv "/tmp/dotdotdot" /etc
```
It is possible to place the repository in a different location, just make sure to change the following environment variable in `zsh/config/zshenv`:  
```
# Change this to full path where the repo is placed
export DOTFILE_REPO_PATH=/etc/dotdotdot
```
  
2. Change the default login shell to `zsh`:
```
chsh -s $(which zsh)
```
  
3. Run the installation script. This can either be local (for the current user) installation, or global installtion.
```
# Install only for current user
./utils/local-install.sh
# Install configuration globaly
./utils/global-install.sh
```
  
4. Update repo when necessary. The configurations are managed when stow, so pulling the git reposity updates the configurations accross the system.
  
