{ config, pkgs, inputs, outputs, ... }:
{
  users.users.kanpov = {
    isNormalUser = true;
    description = "kanpov";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    users = {
      kanpov = import ../../home;
    };
  };
}