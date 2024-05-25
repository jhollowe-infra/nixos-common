{ config, pkgs, ... }:

{
  imports = [
    ./x11.nix
    ./plasma.nix
    ./sound.nix
  ];
  config = {

  };
}
