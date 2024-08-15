{ lib, ... }:
{
  config = {
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    # percent of memory to dedicate to zram
    memoryPercent = lib.mkDefault 70; # TODO find a way to reduce this if the system already has a lot of memory
  };
  # fully lean into swapping (at a slightly higher override priority than ./swapfile.nix)
  boot.kernel.sysctl={"vm.swappiness" = lib.mkOverride 999 150; };
  };
}
