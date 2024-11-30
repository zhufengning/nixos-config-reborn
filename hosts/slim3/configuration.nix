{ stateVersion, hostname, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../nixos/packages.nix
      ./local-packages.nix
      ../../nixos/modules
    ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}

