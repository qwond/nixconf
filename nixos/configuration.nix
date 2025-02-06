{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "aegis";
  networking.domain = "bedlam";
  networking.networkmanager.enable = true;

  # Locale settings.
  time.timeZone = "Asia/Tashkent";
  i18n.defaultLocale = "en_US.UTF-8";


  users.users.dmitry = {
    initialPassword = "initialpassword";
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    packages = with pkgs; [ ];
  };

  programs.zsh.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  environment.systemPackages = with pkgs; [
    curl
    wget
  ];

  system.stateVersion = "24.11";
}
