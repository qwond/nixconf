{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./git.nix
    ./xdg.nix
    ./fonts.nix
    ./gtk.nix
    ./zsh.nix
    ./helix.nix
    ./devenv.nix
    ./foot.nix
  ];

  home = {
    username = "dmitry";
    homeDirectory = "/home/dmitry";
  };

  home.packages = with pkgs; [
    niri
    fuzzel
    wl-clipboard
    waybar
    brave
    chromium
    pavucontrol
    tree
    btop
    yazi
    mpv
    transmission_4-gtk
    telegram-desktop
  ];

  home.sessionVariables = {
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    CLUTTER_BACKEND = "wayland";
    GDK_BACKEND = "wayland";
    NIXOS_OZONE_WL = "1";
  };

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "25.05";
}
