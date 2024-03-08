{ self, config, pkgs, inputs, outputs, ... }:
{
  imports =
    [
      ./hardware
      ./desktop
      ./../services
      ./../system
      inputs.home-manager.nixosModules.home-manager
    ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
