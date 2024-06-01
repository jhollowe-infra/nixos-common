{ ... }:
{
  imports = [
    ./en_us_utf8.nix
    ./ny_time.nix
    ../net/default.nix
  ];
  config = {
    networking = {
      domain = "home.internal.johnhollowell.com";
      timeServers = [ "time.johnhollowell.com" ];
    };
  };
}
