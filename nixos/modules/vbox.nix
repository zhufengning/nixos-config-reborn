{ pkgs, ... }: {
  # programs.virt-manager.enable = true;
  #
  # users.groups.libvirtd.members = [ "zfn" ];
  #
  # virtualisation.libvirtd.enable = true;
  #
  # virtualisation.spiceUSBRedirection.enable = true;
  # virtualisation.libvirtd.qemu.vhostUserPackages = [ pkgs.virtiofsd ];
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "zfn" ];
  virtualisation.virtualbox.host.enableExtensionPack = true;
  boot.kernelParams = [ "kvm.enable_virt_at_load=0" ];
}
