{ config, pkgs, inputs, outputs, ... }:
{
  config.services.searx = {
    enable = true;
    package = pkgs.searxng;
    settings = {
      use_default_settings = false;
      engines = [
        {
          name = "google";
          engine = "google";
          shortcut = "go";
        }
        {
          name = "wikipedia";
          engine = "wikipedia";
          shortcut = "wp";
        }
        {
          name = "google images";
          engine = "google_images";
          shortcut = "goi";
        }
        {
          name = "google videos";
          engine = "google_videos";
          shortcut = "gov";
        }
      ];
      server = {
        port = 8888;
        bind_address = "127.0.0.1";
        secret_key = "searx_secret_key";
      };
      doi_resolvers = {
        "oadoi.org" = "oadoi.org";
      };
      default_doi_resolver = "oadoi.org";
    };
  };
}