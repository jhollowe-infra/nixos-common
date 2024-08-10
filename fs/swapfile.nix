{ lib, ... }:
{
  config = {
    swapDevices = [
      {
        device = "/swapfile";
        size = lib.mkDefault 1024; # in MB
      }
    ];
    boot.kernel.sysctl."vm.swappiness" = lib.mkDefault 1;
  };
}
