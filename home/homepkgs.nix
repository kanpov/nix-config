{ config, pkgs, inputs, outputs, ... }:
{
  home.packages = with pkgs; [
    # Social networks
    telegram-desktop
    vesktop
    element-desktop
    # Browsing
    firefox
    tor-browser
    # Editors & IDEs
    vscodium
    jetbrains.rider
    jetbrains.pycharm-professional
    jetbrains.idea-ultimate
    # Office
    libreoffice-fresh
    # File management
    seafile-client
    filezilla
    qbittorrent
    # Passwords
    keepassxc
    # Utils
    gnome.gnome-tweaks
    libqalculate
    qalculate-gtk
    lollypop
    calibre
    # Terminal
    tilda
    neofetch
    rsync
    rclone
    # Development SDKs
    temurin-bin-21
    dotnet-sdk_8
    python312
    # Database management
    dbeaver
    # Art (2D and 3D)
    blender
    aseprite
    gimp
    inkscape
    # Learning
    obsidian
    anki
    texliveSmall
    texstudio
  ];
}