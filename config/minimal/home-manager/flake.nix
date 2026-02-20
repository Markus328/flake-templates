{
  description = "A minimal flake for Home Manager";
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    ...
  }: let
    system = "x86_64-linux"; # Your system here
    pkgs = import nixpkgs {
      inherit system;
    };
  in {
    homeConfigurations."my-user@my-host" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [./home.nix];
      extraSpecialArgs = {
        inherit inputs;
      };
    };
  };
}
