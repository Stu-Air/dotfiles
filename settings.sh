#! /bin/bash

    gtktheme = Qogir-Round-Dark
    shelltheme = Qogir-Round-Dark
    icontheme = Qogir-Dark
    cursortheme = Qogir

        interfaceFont = 'Fira Sans Medium 11'
        documentFont = 'Fira Sans Medium 11'
        titlebarFont = 'Fira Sans Bold 11'
        monospaceFont = 'FiraCode Nerd Font 11'



# Stow Dots
    stow bash
    stow fastfetch
    stow fonts
    stow kitty
    stow pictures
    stow starship
    stow vscodium


# VsCodium Extensions
    mkdir ~/.vscode-oss/extensions/ && cd ~/.vscode-oss/extensions/
    git clone https://github.com/formulahendry/vscode-auto-rename-tag.git              # Auto Rename Tag
    git clone https://github.com/alefragnani/vscode-bookmarks.git                      # Bookmarks
    git clone https://github.com/streetsidesoftware/vscode-spell-checker.git           # Code spellchecker
    git clone https://github.com/usernamehw/vscode-error-lens.git                      # Code Error lens
    git clone https://github.com/kisstkondoros/gutter-preview.git                      # image previewer
    git clone https://github.com/microsoft/vscode-livepreview.git                      # Live preview
    git clone https://github.com/prettier/prettier-vscode.git                          # Prettier
    git clone https://github.com/alefragnani/vscode-project-manager.git                # Project manager
    git clone https://github.com/eggman314/chogori.git                                 # chogori
    git clone https://github.com/material-extensions/vscode-material-icon-theme.git    # Material icons
    git clone https://github.com/material-extensions/vscode-material-product-icons.git # Material product icons

# System Themes

    # ArcTheme
        git clone https://github.com/vinceliuice/Qogir-theme.git
        cd Qogir-theme
        ./install.sh --tweaks round -c dark -i arch -g -l
        cd ..

    # QogirIcons
        git clone https://github.com/vinceliuice/Qogir-icon-theme.git
        cd Qogir-icon-theme
        ./install.sh -c dark
        cd ..

    # Fira Sans Font  ( already in stow files)
    # FiraCode Nerd Font (already in stow files)