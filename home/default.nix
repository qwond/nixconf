{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "dmitry";
    homeDirectory = "/home/dmitry";
  };

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
