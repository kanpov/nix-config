{ config, pkgs, inputs, outputs, ... }:
{
  home.packages = with pkgs; [
    # Social networks
    telegram-desktop
    vesktop
    element-desktop
    # Browsing
    firefox
    librewolf
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
    # Reading
    calibre
    # Music & Audio
    vlc
    # Screenshots
    #flameshot
    # Terminal
    guake
    # CLI utilities
    neofetch
    rsync
    rclone
    pipx
    yt-dlp
    gh
    rar
    # API testing
    postman
    # Development SDKs
    temurin-bin-21
    dotnet-sdk_8
    python312
    mono
    go
    # Database management
    dbeaver
    # Art (2D and 3D)
    blender
    aseprite
    gimp
    inkscape
    # Learning
    libqalculate
    qalculate-gtk
    obsidian
    anki
    texliveSmall
    texstudio
  ];
}