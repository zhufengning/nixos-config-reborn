{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    alacritty
    blueman
    chromium
    fuzzel
    imv
    mpv
    obs-studio
    obsidian
    teams-for-linux
    telegram-desktop
    vesktop

    # CLI utils
    bottom
    brightnessctl
    cliphist
    ffmpeg
    git
    grimblast
    htop
    lazygit
    lf
    microfetch
    neovim
    playerctl
    ripgrep
    silicon
    starship
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
    nodejs
    python311

    # WM stuff
    waybar
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk

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
