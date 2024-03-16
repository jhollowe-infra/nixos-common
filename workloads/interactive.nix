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

    # enable a ld shim which allows non-nix compiled binaries to use nix-organized dynamic libraries
    # e.g. vscode remote
    programs.nix-ld.enable = true;
  };
}
