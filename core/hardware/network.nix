{ config, pkgs, inputs, outputs, ... }:
{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
}