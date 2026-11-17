{ lib, ... }:
{
  config = {
    zramSwap = {
      enable = true;
      algorithm = "zstd";
      # use 70% of ram (up to 2 GiB) (seems to average ~ 3:1 compression)
      memoryPercent = 70;
      memoryMax = 2 * 1024 * 1024 * 1024;
    };
    # fully lean into swapping (at a slightly higher override priority than ./swapfile.nix)
    boot.kernel.sysctl."vm.swappiness" = lib.mkOverride 999 150;
    # zram is not a spinning disk: read pages back one at a time instead of readahead clusters
    boot.kernel.sysctl."vm.page-cluster" = 0;
  };
}
