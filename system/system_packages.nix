{ config, pkgs, inputs, outputs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    micro
    curl
    wget
  ];
}