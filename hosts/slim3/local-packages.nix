{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    jetbrains.pycharm-professional
    gcc
    jre8
    qemu
    quickemu
  ];
}
