{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports =
    [ 
      ./hardware-configuration.nix
    ];

  time.timeZone = "Asia/Tashkent";
  i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

 
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "aegis"; 
  networking.networkmanager.enable = true; 
  
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      libva
      intel-media-driver
      intel-vaapi-driver # previously vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
      intel-compute-runtime # OpenCL filter support (hardware tonemapping and subtitle burn-in)
      vpl-gpu-rt # QSV on 11th gen or newer
      intel-media-sdk 
    ];
  };

  services.printing.enable = false;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # make pipewire realtime-capable
  security.rtkit.enable = true;

  users.users.dmitry = {
    shell = pkgs.zsh;
    initialPassword = "perasperaadastra";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      kitty
      wl-clipboard
      waybar
      wofi
      brave
      telegram-desktop
      mako
      git
    ];
  };
  
  programs.zsh = {
    enable = true;
  };
  
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    libva
    clinfo
    intel-gpu-tools
    sycl-info

    curl
    wget
  ];

  system.stateVersion = "24.11"; 
}

