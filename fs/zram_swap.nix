{ lib, ... }:
{
  imports = [ ../overrides/modules/zram.nix ];

  config = {
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    # use 70% of ram (up to 2 GB) (seems to average ~ 3:1 compression)
    memoryEquation = "min(70/100 * ram, 2048)";
  };
  # fully lean into swapping (at a slightly higher override priority than ./swapfile.nix)
  boot.kernel.sysctl={"vm.swappiness" = lib.mkOverride 999 150; };
  };
}
