{ config, pkgs, inputs, outputs, ... }:
{
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
  users.users.kanpov.extraGroups = [ "libvirtd" ];
}