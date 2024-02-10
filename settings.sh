#! /bin/bash

#ZSH
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions  # Tab completion for suggestions
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
    chsh -s $(which zsh)


#Folders
    mv -r home/* ~/
    ln -sf ~/.minecraft/screenshots ~/Minecraft/screenshots
    ln -sf ~/.minecraft/mods ~/Minecraft/mods
    ln -sf ~/.minecraft/schematics ~/Minecraft/schematics
    ln -sf ~/.minecraft/resourcepacks ~/Minecraft/resourcepacks
    ln -sf ~/.minecraft/saves ~/Minecraft/saves
    ln -sf ~/Pictures/profile-pics/profile.png /var/lib/gdm3/.face
    ln -sf ~/Pictures/profile-pics/profile.png ~/.face 