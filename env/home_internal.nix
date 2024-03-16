{ config, pkgs, modulesPath, ... }:

{
  imports = [
    ./ny_time.nix
    ./en_us_utf8.nix
    ../net/_default.nix
  ];
  config = {
    networking = {
      domain = "home.internal.johnhollowell.com";
      timeServers = [ "time.johnhollowell.com" ];
    };
  };
}
