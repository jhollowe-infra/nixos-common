{ config, pkgs, ... }:

{
  config = {
    environment.systemPackages = with pkgs; [
      # NETWORKING #
      dig
      tcpdump
      traceroute
      iputils
      # TEXT AND TERMINAL #
      tmux
      # PERFORMANCE ANALYTICS #
      btop
      htop
      iftop
      # HARDWARE #
      lsusb
      pciutils
    ];
    # add MTR and allow it to do all the permissions setup it needs to properly run
    programs.mtr.enable = true;

    # allow this host to respond to pings
    networking.firewall.allowPing = true;
  };
}
