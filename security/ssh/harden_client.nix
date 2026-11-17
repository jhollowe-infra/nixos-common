{ ... }:
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
      ];
      kexAlgorithms = [
        # post-quantum hybrids first
        "mlkem768x25519-sha256"
        "sntrup761x25519-sha512@openssh.com"
        "curve25519-sha256"
        "curve25519-sha256@libssh.org"
        "diffie-hellman-group-exchange-sha256"
        "diffie-hellman-group16-sha512"
        "diffie-hellman-group18-sha512"
      ];
      macs = [
        "umac-128-etm@openssh.com"
        "hmac-sha2-256-etm@openssh.com"
        "hmac-sha2-512-etm@openssh.com"
      ];
    };
  };
}
