{ lib, ... }:
{
  config = {
    # weekly garbage collection of the Nix store, keeping 30 days of generations
    nix.gc = {
      automatic = lib.mkDefault true;
      dates = lib.mkDefault "weekly";
      options = lib.mkDefault "--delete-older-than 30d";
    };

    # limit the number of boot entries so /boot doesn't fill up
    # (only the options for the enabled bootloader have any effect)
    boot.loader.grub.configurationLimit = lib.mkDefault 5;
    boot.loader.systemd-boot.configurationLimit = lib.mkDefault 5;
  };
}
