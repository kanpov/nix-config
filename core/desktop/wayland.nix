{ environment, ... }:

{
  # Needed for VSCodium to work under Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}