{ config, pkgs, inputs, outputs, ... }:
{
  services.xserver = {
    enable = true;

    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;

    xkb = {
      layout = "us,ru,de";
      variant = "";
      options = "grp:alt_shift_toggle,grp:ctrl_shift_toggle";
    };
  };
}