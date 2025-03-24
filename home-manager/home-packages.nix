{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    # anki
    # code-cursor
    vscode
    #imv
    #mpv
    obs-studio
    obsidian
    #pavucontrol
    nixfmt
    direnv
    #    teams-for-linux
    telegram-desktop
    #    vesktop
    firefox-devedition-bin
    file-roller
    (pkgs.callPackage ./modules/jeb/default.nix {
      jeb_home = "/home/zfn/Programs/JEB-5.16.0.202408261745_by_CXV";
    })
    (pkgs.callPackage ./modules/ida/ida.nix {
      # Alternatively, fetch the installer through `fetchurl`, use a local path, etc.
      runfile = /home/zfn/Programs/ida91/portable/linux;
    })
    #nautilus
    #arandr
    #autorandr
    ghidra
    cutter

    # CLI utils
    bc
    bottom
    brightnessctl
    #cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
    git-graph
    grimblast
    grc
    htop
    hyprpicker
    ntfs3g
    mediainfo
    microfetch
    playerctl
    ripgrep
    showmethekey
    silicon
    udisks
    ueberzugpp
    unzip
    w3m
    wget
    wtype
    yt-dlp
    zip
    dex
    superfile
    yazi
    fastfetch
    xclip
    xsel

    # Coding stuff
    openjdk21
    nodejs
    python313
    uv
    swt

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
    nix-prefetch-scripts

    dejavu_fonts
    jetbrains-mono
    noto-fonts
    noto-fonts-lgc-plus

    noto-fonts-cjk-sans
    texlivePackages.hebrew-fonts
    noto-fonts-emoji
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override {
      fonts = [ "NerdFontsSymbolsOnly" "JetBrainsMono" "Hack" ];
    })
  ];
}
