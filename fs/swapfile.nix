{ config, pkgs, ... }:
{
  config = {
    swapDevices = [
      {
        device = "/swapfile";
        size = 1024; # in MB
      }
    ];
    boot.kernel.sysctl."vm.swappiness" = 0;
  };
}
