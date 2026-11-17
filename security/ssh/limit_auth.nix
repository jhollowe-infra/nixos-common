{ ... }:
{
  config = {
    services.openssh.settings = {
      PermitRootLogin = "no";
      KbdInteractiveAuthentication = false;
      PasswordAuthentication = false;
      AuthenticationMethods = "publickey";
    };
  };
}
