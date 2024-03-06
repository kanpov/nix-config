{ config, pkgs, inputs, outputs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    nano
    micro
    curl
    wget
    httpie
    ncdu
  ];
}