{ modulesPath, ... }:
{
  imports = [
    (modulesPath + "/profiles/hardened.nix")
  ];
}
