{ config, pkgs, inputs, outputs, ... }:
{
  home.packages = with pkgs; [
    # Social networks
    telegram-desktop
    vesktop
    # Browsing
    firefox
    # Editors & IDEs
    vscodium
    jetbrains.rider
    jetbrains.pycharm-professional
    jetbrains.idea-ultimate
    # Office
    libreoffice-fresh
    # File management
    seafile-client
    # Passwords
    keepassxc
    # DE
    gnome.gnome-tweaks
    # Terminal
    tilda
    neofetch
    rsync
    rclone
    # Development SDKs
    temurin-bin-21
    dotnet-sdk_8
    python312
    # Containerization
    docker_25
    podman
    # Database management
    dbeaver
  ];
}