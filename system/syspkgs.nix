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
    # Custom-built packages
    (pkgs.callPackage ./../packages/cloak.nix {})
  ];
}
