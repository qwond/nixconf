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
    ./gtk.nix
    ./zsh.nix
    ./helix.nix
    ./devenv.nix
    ./foot.nix
    ./direnv.nix
    ./eww.nix
    ./vscode.nix
    ./mpd.nix
  ];

  home = {
    username = "dmitry";
    homeDirectory = "/home/dmitry";
  };

  home.packages = with pkgs; [
    niri
    wl-clipboard
    fuzzel
    waybar
    brave
    chromium
    pavucontrol
    mpv
    transmission_4-gtk
    telegram-desktop
    zathura
    brightnessctl
  ];

  home.sessionVariables = {
    BROWSER = "chromium";
    TERMINAL = "foot";
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
