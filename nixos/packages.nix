{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    alacritty
    chromium
    git
    neovim
    wofi
    swww
    imv
    mpv
    unzip
    microfetch
    gcc
    home-manager
    prismlauncher
    telegram-desktop
    waybar
    bottom
    xdg-desktop-portal-hyprland
    wl-clipboard
    cliphist
    grimblast
    obsidian
    htop
    lf
    jetbrains.pycharm-professional
    python311
    blueman
    teams-for-linux
    silicon
    tree
    obs-studio
    fuzzel
    tmux
    ffmpeg
    yt-dlp
    jre8
    ripgrep
    discord
    zip
    nodejs
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
