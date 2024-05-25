{ ... }:
{
  imports = [
    ./firewall.nix
  ];

  config = {
    networking.firewall.allowPing = true;
  };
}
