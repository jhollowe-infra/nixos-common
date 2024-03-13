{ config, pkgs, ... }:
{
  config = {
    networking.timeservers = [ "time.johnhollowell.com" ];
  };
}
