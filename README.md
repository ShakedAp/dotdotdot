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
  
3. Run the installation script. This can either be local (for the current user) installation, or global installtion. Make sure to backup anything that's worth keeping before running this script.
```
# Install only for current user
./utils/local-install.sh
# Install configuration globaly
./utils/global-install.sh
```
  
4. Update repo when necessary. The configurations are managed when stow, so pulling the git reposity updates the configurations accross the system.
  

## ZSH

### Powerlevel10k

In order to make sure `powerlevel10k` is working properly `gitstatusd` needs to be fetched.  
It should be placed at the following path (the binary looks something like this `gitstatusd-linux-x86_64`):  
```
${GITSTATUS_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/gitstatus}
```
If there is none you can try disabling it:  
```
POWERLEVEL9K_DISABLE_GITSTATUS=true
```
It should download it automatically, with internet connection.  

## TODO
  
- Nvim config
- Vim config
- Tmux config
- Bash config
- Converter from vim config to vscode config

