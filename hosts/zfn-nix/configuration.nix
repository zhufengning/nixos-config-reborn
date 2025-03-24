{ pkgs, stateVersion, hostname, inputs, ... }:

{
  imports =
    [ ./hardware-configuration.nix ./local-packages.nix ../../nixos/modules ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
  nixpkgs.config.allowUnfree = true;
  networking.firewall.enable = false;
}

