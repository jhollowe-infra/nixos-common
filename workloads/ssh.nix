{ ... }:
{
  imports = [
    ../security/ssh/limit_auth.nix
  ];

  config = {
    services.openssh = {
      enable = true;
      openFirewall = true;

      # disable obsolete SSH v1
      extraConfig = "Protocol 2";
    };
  };
}
