{ self, config, pkgs, inputs, outputs, ... }:
{
  imports =
    [
      ./hardware/autogen.nix
      ./hardware/boot.nix
      ./hardware/network.nix
      ./hardware/nvidia.nix
      ./hardware/printing.nix
      ./hardware/sound.nix
      ./desktop/locale.nix
      ./desktop/users.nix
      ./desktop/xserver.nix
      ./../services/postgres.nix
      ./../services/invidious.nix
      ./../services/searx.nix
      ./../system/containerization.nix
      ./../system/syspkgs.nix
      ./../system/virtualization.nix
      inputs.home-manager.nixosModules.home-manager
    ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
