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
      ./../system/containerization.nix
      ./../system/searx.nix
      ./../system/syspkgs.nix
      ./../system/virtualization.nix
      inputs.home-manager.nixosModules.home-manager
    ];

  nixpkgs.overlays = [
    inputs.nix-alien.overlays.default
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
