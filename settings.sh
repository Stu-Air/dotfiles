#! /bin/bash

#Folders
    cp -r home/Pictures/* ~/Pictures
    cp -r home/dot_config/* ~/.config
    cp -r home/dot_fonts ~/.fonts
    cp -r home/dot_zsh.dot_p10k.zsh ~/.zsh/.p10k.zsh
    cp home/dot_zshrc ~/.zshrc
    mkdir ~/Onedrive
    mkdir ~/Videos
    mkdir ~/Videos/TvShows
    mkdir ~/Videos/Movies
    mkdir ~/Videos/GameClips
    mkdir ~/.minecraft
    mkdir ~/.minecraft/screenshots && ln -sf ~/.minecraft/screenshots ~/Minecraft/screenshots
    mkdir ~/.minecraft/mods && ln -sf ~/.minecraft/mods ~/Minecraft/mods
    mkdir ~/.minecraft/schematics && ln -sf ~/.minecraft/schematics ~/Minecraft/schematics
    mkdir ~/.minecraft/resourcepacks && ln -sf ~/.minecraft/resourcepacks ~/Minecraft/resourcepacks
    mkdir ~/.minecraft/saves && ln -sf ~/.minecraft/saves ~/Minecraft/saves
    ln -sf ~/Pictures/profile-pics/profile.png /var/lib/gdm3/.face
    ln -sf ~/Pictures/profile-pics/profile.png ~/.face 


#ZSH
    #git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions  # Tab completion for suggestions
    #git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
    #chsh -s $(which zsh)

    exit
