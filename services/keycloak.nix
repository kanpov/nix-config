{ config, pkgs, inputs, outputs, ... }:
{
  config.services.keycloak = {
    enable = true;
    settings = {
      http_port = 8080;
      hostname = "keycloak.example.com";
    };
    package = pkgs.keycloak;
    initialAdminPassword = "admin";
    database = {
      createLocally = true;
    };
  };
}