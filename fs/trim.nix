{ ... }:
{
  config = {
    # enable automated TRIMs on the storage
    services.fstrim.enable = true;
    services.fstrim.interval = "weekly";
  };
}
