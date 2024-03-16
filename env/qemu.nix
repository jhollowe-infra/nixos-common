{ config, pkgs, modulesPath, ... }:

{
  imports = [
    (modulesPath + "/profiles/qemu-guest.nix")
  ];

  config = {
    # add support for the hypervisor to control this VM
    services.qemuGuest.enable = true;
  };
}
