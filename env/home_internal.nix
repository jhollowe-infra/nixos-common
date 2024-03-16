{ config, pkgs, modulesPath, ... }:

{
  imports = [
    ./ny_time.nix
  ];
  config = {
    networking = {
      domain = "home.internal.johnhollowell.com";
    };
  };
}
