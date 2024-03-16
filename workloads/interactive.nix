{ config, pkgs, ... }:

{
  imports = [
    ./flakes.nix
    ./diag.nix
  ];
  config = {
    environment.systemPackages = with pkgs; [
      # NETWORKING #
      curl
      wget
      # TEXT AND TERMINAL #
      git
      nano
      tmux
      vim
      # COMPRESSION #
      gzip
      pigz
      zstd
      # STREAM/PIPE #
      progress
      pv
    ];
  };
}
