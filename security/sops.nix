{ pkgs, ... }:
{
  # auto generate a key from the host SSH key which should be unique per host
  sops.age.sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];

  # include packages useful for interacting with sops
  environment.systemPackages = with pkgs; [
    sops
    age
    ssh-to-age
  ];
}
