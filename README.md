# nixos-common

Common shared NixOS modules/flakes which can be reused.

## Usage

Add as a flake input and import the modules you want:

```nix
inputs.nixos-common.url = "github:jhollowe-infra/nixos-common";

# in a nixosSystem's modules
modules = [
  nixos-common.nixosModules.user
  nixos-common.nixosModules.workloads-ssh
  nixos-common.nixosModules.env-ny-time
];
```

Run `nix flake show` to list the available modules.
