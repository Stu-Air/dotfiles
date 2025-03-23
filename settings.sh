#! /bin/bash


# Stow Dots
    stow --adopt bash
    stow --adopt fastfetch
    stow --adopt fonts
    stow --adopt kitty
    stow --adopt pictures
    stow --adopt starship
    stow --adopt vscodium

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
    # Qogir-Round-Dark gtk theme
    # Qogir-Round-Dark shell theme
    # Qogir-Dark icons
    # Qogir Cursor

    # Fira Sans Medium Interface font
    # Fira Sans Medium Document font
    # FiraCode Nerd Font

    exit
