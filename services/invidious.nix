{ config, pkgs, ... }:
{
  config.services.invidious = {
    enable = true;
    package = pkgs.invidious;
    port = 9000;
    database.createLocally = false;
    settings = {
      database_url = "postgres://invidious:invidious@localhost:5432/invidious";
    };
  };
}