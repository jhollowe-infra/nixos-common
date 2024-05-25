{ lib, ... }:
{
  config = {
    networking.firewall = {
      enable = lib.mkDefault true;
      # allowPing included in _default.nix
      # allowedTCPPorts = [
      #   80  # HTTP
      #   443 # HTTPS
      # ];
    };
  };
}
