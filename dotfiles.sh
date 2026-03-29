#! /bin/bash

#    gtktheme = Qogir-Round-Dark
#    shelltheme = Qogir-Round-Dark
#    icontheme = Qogir-Dark
#    cursortheme = Qogir

#    interfaceFont = 'Fira Sans Medium 11'
#    documentFont = 'Fira Sans Medium 11'
#    titlebarFont = 'Fira Sans Bold 11'
#    monospaceFont = 'FiraCode Nerd Font 11'



# Stow Dots
    stow alacritty
    stow autostart
    rm ~/.bashrc
    rm ~/.bash_logout
    rm ~/.bash_profile
    stow bash
    stow fastfetch
    stow fonts
    stow kitty
    rm -r ~/Pictures
    stow pictures
    stow starship
    stow vscodium
    # kde settings via stow
    rm ~/.config/Trolltech.conf
    rm ~/.config/dolphinrc
    rm ~/.config/gtkrc
    rm ~/.config/kdedefaults/kcminputrc
    rm ~/.config/kdedefaults/kdeglobals
    rm ~/.config/kdedefaults/ksplashrc
    rm ~/.config/kdedefaults/kwinrc
    rm ~/.config/kdedefaults/package
    rm ~/.config/kdedefaults/plasmarc
    rm ~/.config/kdeglobals
    rm ~/.config/kglobalshortcutsrc
    rm ~/.config/ktimezonedrc
    rm ~/.config/kwinoutputconfig.json
    rm ~/.config/kwinrc
    rm ~/.config/plasma-localerc
    rm ~/.config/plasma-org.kde.plasma.desktop-appletsrc
    rm ~/.config/plasmashellrc
    rm ~/.config/xsettingsd/xsettingsd.conf
    rm ~/.config/KDE/UserFeedback.conf
    stow kde

# VsCodium Extensions
    codium --install-extension formulahendry.auto-rename-tag          # Auto Rename Tag
    codium --install-extension alefragnani.Bookmarks                  # Bookmarks
    codium --install-extension usernamehw.errorlens                   # Code Error lens
    codium --install-extension kisstkondoros.vscode-gutter-preview    # image previewer
    codium --install-extension ms-vscode.live-server                  # Live preview
    codium --install-extension esbenp.prettier-vscode                 # Prettier
    codium --install-extension alefragnani.project-manager            # Project manager
    codium --install-extension eggman.chogori                         # chogori
    codium --install-extension PKief.material-icon-theme              # Material icons
    codium --install-extension PKief.material-product-icons           # Material product icons

# System Themes

    # QogirTheme Gnome
    #    git clone https://github.com/vinceliuice/Qogir-theme.git
    #    cd Qogir-theme
    #   ./install.sh --tweaks round -c dark -i arch -g -l
    #   cd ..
    
    # QogirIcons
        git clone https://github.com/vinceliuice/Qogir-icon-theme.git
        cd Qogir-icon-theme
        ./install.sh
        cd ..

    # QogirTheme kde
        git clone https://github.com/vinceliuice/Qogir-kde.git
        cd Qogir-kde
        ./install.sh
        cd sddm
        ./install.sh
        cd ..
    
    # Fira Sans Font  ( already in stow files)
    # FiraCode Nerd Font (already in stow files)
