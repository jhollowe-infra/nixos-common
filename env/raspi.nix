{ config, pkgs, ... }:

{
  imports = [
    ../fs/swapfile.nix
  ];

  config = {
    # Use the extlinux boot loader. (NixOS wants to enable GRUB by default)
    boot.loader.grub.enable = false;
    # Enables the generation of /boot/extlinux/extlinux.conf
    boot.loader.generic-extlinux-compatible.enable = true;

    environment.systemPackages = with pkgs; [
      libraspberrypi # raspberry pi util commands
    ];
  };

}
