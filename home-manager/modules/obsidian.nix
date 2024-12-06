{ user, pkgs, ... }:
let
  vaultDir = "/home/${user}/para";
  gitSyncObsidian = pkgs.writeScriptBin "git-sync-obsidian" ''
    #!/bin/sh

    VAULT_DIR="${vaultDir}"
    cd "$VAULT_DIR" || exit 1
    git add .
    git commit -m "$(date '+%Y-%m-%d %H:%M:%S')" || exit 0
  '';
in {
  home.packages = [ gitSyncObsidian ];

  systemd.user.services.git-sync-obsidian = {
    Unit.Description = "Commit Obsidian Vault changes with git";
    Service = {
      ExecStart = "${gitSyncObsidian}/bin/git-sync-obsidian";
      Type = "simple";
    };
    Install.WantedBy = [ "timers.target" ];
  };

  systemd.user.timers.git-sync-obsidian = {
    Unit.Description = "Run Git Sync for Obsidian Vault";
    Timer = {
      OnCalendar = "*:0/15";
      Persistent = true;
    };
    Install.WantedBy = [ "timers.target" ];
  };
}
