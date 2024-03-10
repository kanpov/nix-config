{ config, pkgs, inputs, outputs, ... }:
{
  services.xserver = {
    enable = true;

    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
}