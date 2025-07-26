{
  lib,
  pkgs,
  ...
}: {
  # Host settings
  networking.hostName = "karakum";
  networking.networkmanager.enable = true;
  networking.useDHCP = lib.mkDefault true;
}
