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
    neovim
    jetbrains.rider
    jetbrains.pycharm-professional
    jetbrains.idea-ultimate
    jetbrains.goland
    dbeaver
    # Office
    libreoffice-qt
    # File management
    seafile-client
    filezilla
    qbittorrent
    # Passwords
    keepassxc
    # Reading
    calibre
    # Music & Audio
    mpv
    ffmpeg
    # Screenshots
    spectacle
    # Terminal
    yakuake
    # CLI utilities
    neofetch
    rsync
    rclone
    yt-dlp
    gh
    rar
    p7zip
    pgcli
    gnumake
    # Development SDKs
    temurin-bin-21
    dotnet-sdk_8
    python312Full
    go
    go-migrate
    # Partitioning
    gparted
    # 2D
    gimp
    inkscape
    # Calculator
    libqalculate
    qalculate-qt
    # Learning & Notes
    anki
    obsidian
    texstudio
    texliveMedium
  ];
}
