{ config, pkgs, ... }:

{
  config = {
    services.openssh = {
      challengeResponseAuthentication = false;
      settings = {
        PermitRootLogin = "no";
        KbdInteractiveAuthentication = false;
        PasswordAuthentication = false;
        extraConfg = ''
          PubkeyAuthentication yes
          AuthenticationMethods publickey
          PermitEmptyPasswords no
          HostbasedAuthentication no
        '';
      };
    };
  };
}
