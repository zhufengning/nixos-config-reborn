{ pkgs, inputs, ... }: {
  imports = [ inputs.stylix.homeManagerModules.stylix ];
  stylix = {
    enable = true;
    polarity = "dark";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
    base16Scheme = {
    #   base00 = "#282828";
    #   base01 = "#cc241d";
    #   base02 = "#98971a";
    #   base03 = "#d79921";
    #   base04 = "#458588";
    #   base05 = "#b16286";
    #   base06 = "#689d6a";
    #   base07 = "#a89984";
    #   base08 = "#928374";
    #   base09 = "#fb4934";
    #   base0A = "#b8bb26";
    #   base0B = "#fabd2f";
    #   base0C = "#83a598";
    #   base0D = "#d3869b";
    #   base0E = "#8ec07c";
    #   base0F = "#ebdbb2";
    # };
      base00 = "#282828"; # ----
      base01 = "#3c3836"; # ---
      base02 = "#504945"; # --
      base03 = "#665c54"; # -
      base04 = "#bdae93"; # +
      base05 = "#d5c4a1"; # ++
      base06 = "#ebdbb2"; # +++
      base07 = "#fbf1c7"; # ++++
      base08 = "#fb4934"; # red
      base09 = "#fe8019"; # orange
      base0A = "#fabd2f"; # yellow
      base0B = "#b8bb26"; # green
      base0C = "#8ec07c"; # aqua/cyan
      base0D = "#83a598"; # blue
      base0E = "#d3869b"; # purple
      base0F = "#d65d0e"; # brown
    };

    targets = {
      neovim.enable = false;
      waybar.enable = false;
      wofi.enable = false;
      hyprlock.enable = false;
    };

    # This doesn't work and idk why
    image = pkgs.fetchurl {
      url = "hhttps://codeberg.org/lunik1/nixos-logo-gruvbox-wallpaper/raw/branch/master/png/gruvbox-dark-rainbow.pngttps://codeberg.org/lunik1/nixos-logo-gruvbox-wallpaper/raw/branch/master/png/gruvbox-dark-rainbow.png";
      sha256 = "036gqhbf6s5ddgvfbgn6iqbzgizssyf7820m5815b2gd748jw8zc";
    };
  };
}
