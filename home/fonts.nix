{pkgs, ...}: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    pkgs.nerd-fonts.go-mono
    pkgs.nerd-fonts.iosevka
    pkgs.nerd-fonts.jetbrains-mono
  ];
}
