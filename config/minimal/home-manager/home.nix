{
  config,
  lib,
  pkgs,
  ...
}: {
  home.username = "my-user";

  home.packages = with pkgs; [];

  home.stateVersion = "25.11";
}
