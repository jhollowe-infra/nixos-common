{ config, pkgs, ... }:
{
  imports = [
    ./firewall.nix
    ./time.nix
  ];

  config = {
    networking.firewall.allowPing = true;
  };
}
