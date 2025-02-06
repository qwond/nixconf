{config,...}:
{
  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    documents = "${config.home.homeDirectory}/docs";
    download = "${config.home.homeDirectory}/download";

    music = "${config.home.homeDirectory}/media/music";
    pictures = "${config.home.homeDirectory}/media/pics";
    videos = "${config.home.homeDirectory}/media/video";

    desktop = "${config.home.homeDirectory}/misc/desktop";
    templates = "${config.home.homeDirectory}/misc/templates";
    publicShare = "${config.home.homeDirectory}/pub";
  };
}
