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
    wofi

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
    wtype
    yt-dlp
    zip

    # Coding stuff
    nodejs
    python311

    # WM stuff
    hyprpicker
    libsForQt5.xwaylandvideobridge
    libnotify
    waybar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
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
