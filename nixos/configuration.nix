{ stateVersion, hostname, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules
    ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}

