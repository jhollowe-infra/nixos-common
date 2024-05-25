{ ... }:
let
  username = "jhollowe";
in
{
  config = {
    users.users."${username}" = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "docker" ];
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILjyoZakOhGPmzJx3zH8vEizvfMbM5Aa8iTuP5VAk+QK 3:jhollowe@JOHN-DESKTOP.internal.johnhollowell.com"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDr9lnRhfAPce+yYxNMIL9EWa7dOl2u0vjq5qVM5P17i jhollowe@JOHN-LAPTOP.internal.johnhollowell.com"
      ];
    };

    # Make sudo calls not require a password
    security.sudo.extraRules = [
      {
        users = [ "${username}" ];
        commands = [
          {
            command = "ALL";
            options = [ "NOPASSWD" "SETENV" ];
          }
        ];
      }
    ];

    # ensure user can run nix commands
    nix.settings.allowed-users = [ "${username}" ];
  };
}
