{...}: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        locked-title = "no";
        font = "Iosevka NFM:size=14";
        pad = "8x8";
      };
      bell = {
        visual = "yes";
      };
    };
  };
}
