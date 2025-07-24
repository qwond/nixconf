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
  ];

  networking.hostName = "karakum";
  networking.networkmanager.enable = true;
  networking.useDHCP = lib.mkDefault true;

  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

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
      "audio"
      "video"
      "disk"
    ];
  };

  programs.zsh.enable = true;

  environment.defaultPackages = [];
  environment.systemPackages = with pkgs; [
    curl
    wget
    bat
    yazi
  ];

  hardware.graphics = {
    enable = true;
  };

  programs.vim = {
    enable = true;
    defaultEditor = true;
  };

  system.stateVersion = "25.05"; # Did you read the comment?
}
