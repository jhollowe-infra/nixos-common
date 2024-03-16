{ config, pkgs, ... }:

{
  config = {
    environment.systemPackages = with pkgs; [
      # NETWORKING #
      dig
      tcpdump
      traceroute
      # TEXT AND TERMINAL #
      tmux
      # PERFORMANCE ANALYTICS #
      btop
      htop
      iftop
    ];
    programs.mtr.enable = true;
  };
}
