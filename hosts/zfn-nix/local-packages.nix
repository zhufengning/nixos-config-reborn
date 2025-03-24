{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gcc
    kdenlive
    #networkmanagerapplet
    flatpak-builder
    bridge-utils
    wl-clipboard
    #virtiofsd
    # jetbrains.pycharm-professional
    # jre8
    # qemu
    # quickemu
  ];
}
