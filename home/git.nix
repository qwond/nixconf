{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:{
  programs.git = {
    enable = true;
    userName = "dmitry";
    userEmail = "dmitry.qwond@gmail.com";
  };
}
