{ config, pkgs, ... }:
{
  imports = [
    ./firewall.nix
  ];

  config = {
    networking.firewall.allowPing = true;
  };
}
