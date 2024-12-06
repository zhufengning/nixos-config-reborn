{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gcc
    # jetbrains.pycharm-professional
    # jre8
    # qemu
    # quickemu
  ];
}
