# oh-my-posh configuration

This is my [oh-my-posh](https://ohmyposh.dev/) configuration - the prompt configuration.  
  
Oh my posh is really nice, and makes prompt configuration really easy.  
Also it has some built in prompts which is nice.  
  
The only downside to configuring this is that there isn't really a github repo this is pulled from.  
The current way things work is with downloading the latest release, from here:  
```
https://github.com/JanDeDobbeleer/oh-my-posh/releases/
```
Two files are required:
1. the binary (each architecture has it's own)
2. the themes (themes.zip)

The binary needs to be placed here, and needs to be renamed to `oh-my-posh`, and placed in the `bin` directory (also remember to `chmod +x oh-my-posh`).  
The themes needs to be unzipped in the `themes` directory.  
Currently installed is `x86_64` which is named `amd64` in the releaeses.  
  

## Install script
There is an install script, as discussed in the [documentation](https://ohmyposh.dev/docs/installation/linux).  
It's link is this: `https://ohmyposh.dev/install.sh`.  
  
This might be suiteable for a later stage of this dotfiles, but currently they need to be supported without internet connection.  
  

