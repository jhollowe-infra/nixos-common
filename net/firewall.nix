{ config, pkgs, lib, ... }:
{
  config = {
    networking.firewall = {
      enable = lib.mkForce true;
      # allowPing included in _default.nix
      # allowedTCPPorts = [
      #   80  # HTTP
      #   443 # HTTPS
      # ];
    };
  };
}
