{ ... }:
{
  config = {
    virtualisation.docker.enable = true;

    users.groups.containers = {
      gid = 123;
    };

    users.users.container = {
      isSystemUser = true;
      uid = 123;
      group = "containers";
      extraGroups = [ "docker" ];
      password = "password";
    };
  };
}
