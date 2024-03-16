{ config, pkgs, ... }:

{
  config = {
    programs.ssh = {
      hostKeyAlgorithms = [
        # SSH cert keys
        "ssh-ed25519-cert-v01@openssh.com"
        "rsa-sha2-512-cert-v01@openssh.com"
        "rsa-sha2-256-cert-v01@openssh.com"
        "sk-ssh-ed25519-cert-v01@openssh.com"

        # normal keys
        "ssh-ed25519"
        "rsa-sha2-512"
        "rsa-sha2-256"
        "ssh-rsa-sha256@ssh.com"
        "ssh-rsa"
      ];
      kexAlgorithms = [
        "sntrup761x25519-sha512@openssh.com"
        "curve25519-sha256"
        "curve25519-sha256@libssh.org"
        "diffie-hellman-group-exchange-sha256"
        "diffie-hellman-group16-sha512"
        "diffie-hellman-group18-sha512"
        "ext-info-c"
        "kex-strict-c-v00@openssh.com"
      ];
      macs = [
        "umac-128-etm@openssh.com"
        "hmac-sha2-256-etm@openssh.com"
        "hmac-sha2-512-etm@openssh.com"
        ""
      ];
    };
  };
}
