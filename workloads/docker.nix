{ ... }:
{
  config = {
    virtualisation.docker.enable = true;

    users.groups.containers = {
      gid = 123;
    };

    # service account for container workloads: no password (cannot log in)
    users.users.container = {
      isSystemUser = true;
      uid = 123;
      group = "containers";
      extraGroups = [ "docker" ];
    };
  };
}
