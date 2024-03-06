{ config, pkgs, inputs, outputs, ... }:
{
  config.services.postgresql = {
    enable = true;
    package = pkgs.postgresql_16;
    ensureDatabases = [ "keycloak" ];
    identMap = ''
      # ArbitraryMapName systemUser DBUser
      superuser_map      root      postgres
      superuser_map      postgres  postgres
    '';
  };
}