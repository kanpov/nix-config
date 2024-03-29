{ config, pkgs, inputs, outputs, ... }:
{
  environment.systemPackages = with pkgs; [
    # CLI necessities on sudo level
    git
    nano
    micro
    curl
    wget
    httpie
    ncdu
    htop
    # Custom-built packages
    (pkgs.callPackage ./../packages/cloak.nix {})
    # Wine and Wine-based utilities
    wineWowPackages.stableFull
    winetricks
  ];
}
