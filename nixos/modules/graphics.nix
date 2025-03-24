{ pkgs, ... }: {
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = false;
  };
  programs.dconf.enable = true;
  security.pam.services.hyprlock = { };
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.xserver = {
    enable = true;
    videoDrivers = [ "amdgpu" ];
  };
}
