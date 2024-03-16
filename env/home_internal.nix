{ config, pkgs, modulesPath, ... }:

{
  imports = [
    ./ny_time.nix
    ../net/_default.nix
  ];
  config = {
    networking = {
      domain = "home.internal.johnhollowell.com";
    };
  };
}
