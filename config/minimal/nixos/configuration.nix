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

  users.users.markus = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    initialPassword = "test";
  };

  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    htop
    neovim
  ];

  virtualisation.vmVariant = {
    nixpkgs.hostPlatform = pkgs.system;
    virtualisation = {
      memorySize = 2048;
      cores = 2;
    };
  };

  system.stateVersion = "25.11";
}
