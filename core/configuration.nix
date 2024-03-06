{ config, pkgs, inputs, outputs, ... }:
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
      ./desktop/xserver.nix
      ./../system/containerization.nix
      ./../system/syspkgs.nix
      ./../system/virtualization.nix
      inputs.home-manager.nixosModules.home-manager
    ];

  users.users.kanpov = {
    isNormalUser = true;
    description = "kanpov";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "23.11";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    users = {
      kanpov = import ../home/home.nix;
    };
  };
}
