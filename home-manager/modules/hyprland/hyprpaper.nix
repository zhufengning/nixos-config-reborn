{
  home.file.".config/wallpaper.png" = {
    source = builtins.fetchurl {
      url = "https://codeberg.org/lunik1/nixos-logo-gruvbox-wallpaper/raw/branch/master/png/gruvbox-dark-rainbow.png";
      sha256 = "036gqhbf6s5ddgvfbgn6iqbzgizssyf7820m5815b2gd748jw8zc";
    };
  };

  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "~/.config/wallpaper.png" ];
      wallpaper = [ ",~/.config/wallpaper.png" ];
    };
  };
}
