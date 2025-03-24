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


# Gnome Extensions

    #DesktopIcons    
        git clone https://gitlab.com/rastersoft/desktop-icons-ng.git
        cd desktop-icons-ng
        meson --prefix=$HOME/.local/ --localedir=share/gnome-shell/extensions/ding@rastersoft.com/locale .build
        ninja -C .build install
        cd ..
        sudo cp ~/.local/share/gnome-shell/extensions/ding@rastersoft.com/schemas/org.gnome.shell.extensions.ding.gschema.xml /usr/share/glib-2.0/schemas/

    #BlurMyShell
        git clone https://github.com/aunetx/blur-my-shell.git
        cd blur-my-shell
        make install
        cd ..
        sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/


    #TopPanelIcons
        git clone https://github.com/ubuntu/gnome-shell-extension-appindicator.git
        cd gnome-shell-extension-appindicator
        meson gnome-shell-extension-appindicator
        ninja -C gnome-shell-extension-appindicator install
        sudo pacman -Sy --noconfirm libappindicator-gtk2 libappindicator-gtk3
        sudo cp ~/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/schemas/org.gnome.shell.extensions.appindicator.gschema.xml /usr/share/glib-2.0/schemas/

    #PopOsTiling
        git clone https://github.com/pop-os/shell.git
        cd shell
        make local-install
        cd ..

    #ArcMenu
        git clone https://gitlab.com/arcmenu/ArcMenu.git
        cd ArcMenu
        make install
        cd ..
        sudo pacman -Sy --noconfirm gnome-menus			# needed for Arc Menu
        sudo cp ~/.local/share/gnome-shell/extensions/arcmenu@arcmenu.com/schemas/org.gnome.shell.extensions.arcmenu.gschema.xml /usr/share/glib-2.0/schemas/

    #Impatience
        git clone https://github.com/timbertson/gnome-shell-impatience.git
        mkdir ~/.local/share/gnome-shell/extensions/impatience@gfxmonk.net
        cp -r gnome-shell-impatience/impatience/* ~/.local/share/gnome-shell/extensions/impatience@gfxmonk.net
        sudo cp ~/.local/share/gnome-shell/extensions/impatience@gfxmonk.net/schemas/org.gnome.shell.extensions.net.gfxmonk.impatience.gschema.xml /usr/share/glib-2.0/schemas/

    #DashToDock
        git clone https://github.com/micheleg/dash-to-dock.git
        cd dash-to-dock/
        make install # No need for schema build
        cd ..
        sudo cp ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml /usr/share/glib-2.0/schemas/

    #DashToDockCosmic
    #    git clone https://github.com/halfmexican/dash-to-dock-pop.git
    #    cd dash-to-dock-pop/
    #    make install # No need for schema build
    #    cd ..
    #    sudo cp ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml /usr/share/glib-2.0/schemas/


    #DashToPanel
        git clone https://github.com/home-sweet-gnome/dash-to-panel.git
        cd dash-to-panel/
        make install
        cd ..
        sudo cp ~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/schemas/org.gnome.shell.extensions.dash-to-panel.gschema.xml /usr/share/glib-2.0/schemas/

    #ScreenshotTool
    #     git clone https://github.com/OttoAllmendinger/gnome-shell-screenshot.git
    #     sudo pacman -Sy --noconfirm gnome-screenshot
    #     cd gnome-shell-screenshot
    #     make
    #     make install
    #     cd ..
    #     sudo cp ~/.local/share/gnome-shell/extensions/gnome-shell-screenshot@ttll.de/schemas/org.gnome.shell.extensions.screenshot.gschema.xml /usr/share/glib-2.0/schemas/

    #UpdateSchemas
        sudo glib-compile-schemas /usr/share/glib-2.0/schemas/


  
    # Setting up Gnome Shell layout & themes
  
    #DisableExtension
    #    gsettings set org.gnome.shell disabled-extensions "['ubuntu-dock@ubuntu.com','desktop-icons@csoriano']"

    #EnableExtension
        gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'ding@rastersoft.com', 'impatience@gfxmonk.net', 'appindicatorsupport@rgcjonas.gmail.com', 'native-window-placement@gnome-shell-extensions.gcampax.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'places-menu@gnome-shell-extensions.gcampax.github.com', 'blur-my-shell@aunetx', 'gnome-shell-screenshot@ttll.de']"

    #FavoriteApps
        gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'chromium.desktop','thunderbird.desktop','spotify.desktop','chrome-emefpkhgihlhfddcjfghpndaeliajgjj-Default.desktop','codium.desktop','chrome-hnpfjngllnobngcgfapefoaidbinmjnm-Default.desktop','signal-desktop.desktop','minecraft-launcher.desktop']"

    #WindowButtons
        gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

    #NightLight
    #    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

    #TouchpadSettings
        gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
        gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
        gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true

    #BaseSettings
        gsettings set org.gnome.desktop.interface enable-hot-corners false
        gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
        gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
        gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'gb')]"
        gsettings set org.gnome.desktop.interface show-battery-percentage true
        gsettings set org.gnome.desktop.interface clock-format 12h
        gsettings set org.gnome.desktop.interface clock-show-date true
        gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
        gsettings set org.gnome.nautilus.preferences click-policy 'double'
        gsettings set org.gnome.nautilus.icon-view default-zoom-level 'small'
        gsettings set org.gnome.desktop.interface font-name $interfaceFont
        gsettings set org.gnome.desktop.interface document-font-name $documentFont
        gsettings set org.gnome.desktop.interface monospace-font-name $monospaceFont
        gsettings set org.gnome.desktop.wm.preferences titlebar-font $titlebarFont

    #SetThemes
        gsettings set org.gnome.desktop.interface gtk-theme $gtktheme
        gsettings set org.gnome.desktop.interface icon-theme $icontheme
        gsettings set org.gnome.shell.extensions.user-theme name $shelltheme
        gsettings set org.gnome.desktop.interface cursor-theme $cursortheme
        gsettings set org.gnome.desktop.background picture-uri $wallpaper

    #BlurSettings
        gsettings set org.gnome.shell.extensions.blur-my-shell blur-dash false
        gsettings set org.gnome.shell.extensions.blur-my-shell blur-panel false
        gsettings set org.gnome.shell.extensions.blur-my-shell dash-opacity '12'
        gsettings set org.gnome.shell.extensions.blur-my-shell brightness '0.4'

    #DockSettings
        gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
        gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
        gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
        gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true
        gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
        gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
        gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
        gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
        gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner false
        gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true

    #IconSettings
        gsettings set org.gnome.shell.extensions.ding show-home false
        gsettings set org.gnome.shell.extensions.ding show-trash false
        gsettings set org.gnome.shell.extensions.ding icon-size 'small'
        gsettings set org.gnome.shell.extensions.ding show-volumes false
        gsettings set org.gnome.shell.extensions.ding show-drop-place false
        gsettings set org.gnome.shell.extensions.ding add-volumes-opposite false

    #ImpatienceSettings
        gsettings set org.gnome.shell.extensions.net.gfxmonk.impatience speed-factor '0.50'

