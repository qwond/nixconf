{pkgs, ...}: {
  services.gnome-keyring.enable = true;

  home.packages = with pkgs; [
    dconf
    dconf-editor
    nautilus
    sushi
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
    "org/gnome/nautilus/preferences" = {
      use-system-font = true;
    };
  };

  gtk = {
    enable = true;

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = "1";
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = "1";
    };
  };
}
