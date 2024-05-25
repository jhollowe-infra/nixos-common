{ ... }:
{
  config = {
    # Nix will automatically find duplicate files in the store and hard link them together
    nix.settings.auto-optimise-store = true;
  };
}
