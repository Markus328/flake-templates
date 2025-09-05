{
  config,
  pkgs,
  ...
}: {
  imports = [
    # ./hardware-configuration.nix
  ];

  boot.loader.grub.enable = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  services.openssh.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    htop
    neovim
  ];

  system.stateVersion = "25.11";
}
