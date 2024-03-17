{ config, pkgs, ... }:

{
  imports = [
    <nixpkgs/nixos/modules/profiles/hardened.nix>
  ];
}
