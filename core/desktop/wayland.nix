{ environment, ... }:

{
  # Needed for VSCodium to work under Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  # Switch KDE and SDDM to Wayland
  services.xserver.displayManager.defaultSession = "plasma";
  services.xserver.displayManager.sddm.wayland.enable = true;
}