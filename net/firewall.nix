{ config, pkgs, ... }:
{
  config = {
    networking.firewall = {
      enable = true;
      # allowedTCPPorts = [
      #   80  # HTTP
      #   443 # HTTPS
      # ];
  };
}
