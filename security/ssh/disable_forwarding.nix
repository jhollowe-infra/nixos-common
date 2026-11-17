{ ... }:
{
  config = {
    services.openssh.settings = {
      X11Forwarding = false;
      AllowAgentForwarding = false;
    };
  };
}
