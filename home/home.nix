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

  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
  };

  home.stateVersion = "23.05";
}
