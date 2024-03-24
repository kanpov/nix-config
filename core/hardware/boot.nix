{ config, pkgs, inputs, outputs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # Not LTS kernel for extra hardware patches that are important for laptops
  boot.kernelPackages = pkgs.linuxPackages_latest;
}