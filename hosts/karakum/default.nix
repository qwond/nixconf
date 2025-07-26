{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./disko.nix
    ./nixconf.nix
    ./boot.nix
    ./hardware.nix
    ./fonts.nix
    ./networking.nix
    ./devops.nix

    # common packages
    ../common
  ];

  time.timeZone = "Asia/Tashkent";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.libinput.enable = true;

  services.gvfs.enable = true;
  services.devmon.enable = true;
  services.udisks2 = {
    enable = true;
    mountOnMedia = true;
  };

  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;

  users.users.dmitry = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
      "input"
      "audio"
      "video"
      "disk"
      "docker"
    ];
  };

  programs.zsh.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  system.stateVersion = "25.05"; # Did you read the comment?
}
