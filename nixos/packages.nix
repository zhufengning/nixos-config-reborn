{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    chromium
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
    git-graph
    grimblast
    htop
    microfetch
    playerctl
    ranger
    ripgrep
    showmethekey
    silicon
    unzip
    wget
    wl-clipboard
    wtype
    yt-dlp
    zip

    # Coding stuff
    nodejs
    python311

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
    home-manager
  ];

  # Moved to home-manager/modules/stylix.nix
  # fonts.packages = with pkgs; [
  #   jetbrains-mono
  #   noto-fonts
  #   noto-fonts-emoji
  #   twemoji-color-font
  #   font-awesome
  #   powerline-fonts
  #   powerline-symbols
  #   (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  # ];
}
