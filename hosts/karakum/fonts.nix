{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      ubuntu_font_family
      liberation_ttf
      nerd-fonts.go-mono
      nerd-fonts.iosevka
      nerd-fonts.jetbrains-mono
      font-awesome
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["Liberation Serif"];
        sansSerif = ["Ubuntu"];
        monospace = ["Ubuntu Mono"];
      };
    };
  };
}
