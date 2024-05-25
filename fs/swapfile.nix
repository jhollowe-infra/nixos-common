{ lib, ... }:
{
  config = {
    swapDevices = [
      {
        device = "/swapfile";
        size = 1024; # in MB
      }
    ];
    boot.kernel.sysctl."vm.swappiness" = lib.mkDefault 0;
  };
}
