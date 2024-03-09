{ config, pkgs, inputs, outputs, ... }:
{
  environment.systemPackages = with pkgs; [
    podman-compose
  ];

  users.users.kanpov.extraGroups = [ "podman" ];

  virtualisation.podman = {
    enable = true;
    dockerSocket.enable = true;
    defaultNetwork.settings = {
      dns_enabled = true;
    };
  };
}