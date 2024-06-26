{ modulesPath, ... }:
{
  imports = [
    (modulesPath + "/profiles/qemu-guest.nix")
    ../fs/trim.nix
  ];

  config = {
    # add support for the hypervisor to control this VM
    services.qemuGuest.enable = true;
  };
}
