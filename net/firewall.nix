{ config, pkgs, ... }:
{
  config = {
    networking.firewall = {
      enable = true;
      # allowPing included in _default.nix
      # allowedTCPPorts = [
      #   80  # HTTP
      #   443 # HTTPS
      # ];
  };
}
