{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./homepkgs.nix
  ];

  nixpkgs = {
    overlays = [
    ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "kanpov";
    homeDirectory = "/home/kanpov";
  };

  programs.home-manager.enable = true;

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "23.05";
}
