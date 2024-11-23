{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/zram.nix
      ./modules/bluetooth.nix
      ./modules/env.nix
      ./modules/boot.nix
      ./packages.nix
    ];

  xdg.mime.defaultApplications = {
    "inode/directory" = "lf";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Tashkent";

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.libinput.enable = true;
  programs.zsh.enable = true;
  users = {
    defaultUserShell = pkgs.zsh;
    users.amper = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
      packages = with pkgs; [
      ];
    };
  };

  services.getty.autologinUser = "amper";

  programs.nh = {
    enable = true;
    # clean.enable = true;
    # clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/amper/flake";
  };

  system.stateVersion = "24.05"; # Did you read the comment?
}

