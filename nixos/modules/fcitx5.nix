{ i18n, pkgs, ... }: {
  i18n = {
    inputMethod = {
      type = "fcitx5";
      enable = true;
      fcitx5.addons = with pkgs; [ rime-data fcitx5-rime fcitx5-gtk ];
    };
    defaultLocale = "zh_CN.UTF-8";
  };
}
