# Common ZFS host maintenance. Datasets opt in to snapshots with `com.sun:auto-snapshot=true`.
{ lib, ... }:
{
  config = {
    services.zfs.autoScrub.enable = lib.mkDefault true;

    services.zfs.autoSnapshot = {
      enable = lib.mkDefault true;
      frequent = lib.mkDefault 0; # no 15-minute snapshots
      hourly = lib.mkDefault 24;
      daily = lib.mkDefault 7;
      weekly = lib.mkDefault 4;
      monthly = lib.mkDefault 3;
    };
  };
}
