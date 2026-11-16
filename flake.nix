{
  description = "jhollowe's common NixOS modules";

  outputs = { self }: {
    # Modules are meant to be picked individually, so there is no `default`.
    nixosModules = {
      # directories (with default.nix)
      user = ./user;
      desktop = ./desktop;
      net = ./net;

      desktop-plasma = ./desktop/plasma.nix;
      desktop-printing = ./desktop/printing.nix;
      desktop-sound = ./desktop/sound.nix;
      desktop-touchpad = ./desktop/touchpad.nix;
      desktop-x11 = ./desktop/x11.nix;

      env-en-us-utf8 = ./env/en_us_utf8.nix;
      env-home-internal = ./env/home_internal.nix;
      env-ny-time = ./env/ny_time.nix;
      env-qemu = ./env/qemu.nix;
      env-raspi = ./env/raspi.nix;

      fs-nix-auto-optimise = ./fs/nix_auto_optimise.nix;
      fs-swapfile = ./fs/swapfile.nix;
      fs-zram-swap = ./fs/zram_swap.nix;
      fs-trim = ./fs/trim.nix;

      net-firewall = ./net/firewall.nix;
      net-tailscale = ./net/tailscale.nix;

      overrides-zram = ./overrides/modules/zram.nix;

      security-audit = ./security/audit.nix;
      security-gpg-agent = ./security/gpg-agent.nix;
      security-hardened = ./security/hardened.nix;
      security-ssh-disable-forwarding = ./security/ssh/disable_fowarding.nix;
      security-ssh-harden-client = ./security/ssh/harden_client.nix;
      security-ssh-limit-auth = ./security/ssh/limit_auth.nix;
      security-ssh-warning-banner = ./security/ssh/warning_banner.nix;

      workloads-deep-diag = ./workloads/deep_diag.nix;
      workloads-diag = ./workloads/diag.nix;
      workloads-docker = ./workloads/docker.nix;
      workloads-flakes = ./workloads/flakes.nix;
      workloads-interactive = ./workloads/interactive.nix;
      workloads-ssh = ./workloads/ssh.nix;
    };
  };
}
