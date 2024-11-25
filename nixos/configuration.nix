{ stateVersion, hostname, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}

