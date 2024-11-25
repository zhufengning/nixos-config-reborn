{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    alacritty
    blueman
    chromium
    discord
    fuzzel
    imv
    jetbrains.pycharm-professional
    mpv
    obs-studio
    obsidian
    teams-for-linux
    telegram-desktop

    # CLI utils
    bottom
    cliphist
    ffmpeg
    git
    grimblast
    htop
    lazygit
    lf
    microfetch
    neovim
    ripgrep
    silicon
    swww
    tmux
    tree
    unzip
    vim
    wget
    wl-clipboard
    yt-dlp
    zip

    # Coding stuff
    gcc
    jre8
    nodejs
    python311

    # WM stuff
    waybar
    xdg-desktop-portal-hyprland

    # Other
    home-manager
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
