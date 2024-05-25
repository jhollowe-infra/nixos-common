{ ... }:
{
  config = {
    services.openssh = {
      settings = {
        X11Forwarding = false;
        extraConfig = ''
          AllowAgentForwarding no
        '';
      };
    };
  };
}
