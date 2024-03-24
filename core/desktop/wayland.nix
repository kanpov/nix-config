{ environment, ... }:
{
  # Needed for Electron apps (VSCodium, Element) to work under Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}