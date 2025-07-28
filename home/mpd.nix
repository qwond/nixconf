{pkgs,...}:{
   services.mpd = {
     enable = true;
   };

  home.packages = with pkgs; [
    mpc
    ncmpcpp
  ]; 
}

