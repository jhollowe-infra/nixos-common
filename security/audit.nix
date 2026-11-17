{ lib, pkgs, ... }:
let
  # 32-bit syscalls only exist (and the b32 rules only load) on x86_64
  has32 = pkgs.stdenv.hostPlatform.isx86_64;
in
{
  config = {
    security.auditd.enable = true;
    security.audit = {
      enable = true;
      rules = [
        # commands run by real (login) users; skips system services and boot-time
        # activity which make up the vast majority of execve calls
        "-a always,exit -F arch=b64 -S execve -F auid>=1000 -F auid!=unset -k user_exec"
      ]
      ++ lib.optional has32
        "-a always,exit -F arch=b32 -S execve -F auid>=1000 -F auid!=unset -k user_exec"
      ++ [
        # kernel module loading/unloading
        "-a always,exit -F arch=b64 -S init_module,finit_module,delete_module -k modules"
      ];
    };
  };
}
