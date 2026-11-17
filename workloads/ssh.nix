{ ... }:
{
  imports = [
    ../security/ssh/limit_auth.nix
  ];

  config = {
    services.openssh = {
      enable = true;
      openFirewall = true;
    };
  };
}
