# Tailscale client.
#
# To authenticate non-interactively, set `services.tailscale.authKeyFile` on the host to a path
# provided at runtime (e.g. a sops-nix/agenix secret). Never put the key in a Nix string: that
# copies it into the world-readable Nix store.
{ ... }:
{
  config = {
    services.tailscale = {
      enable = true;
      openFirewall = true;
    };
    networking.firewall.trustedInterfaces = [ "tailscale0" ];
  };
}
