{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gcc
    kdenlive
    networkmanagerapplet
    # jetbrains.pycharm-professional
    # jre8
    # qemu
    # quickemu
  ];
}
