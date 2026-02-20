{
  description = "A tiny collection of flake templates";
  outputs = {self}: {
    templates = {
      dev.minimal = {
        path = ./dev/minimal;
        description = "A template that create a minimal dev flake for each system.";
      };
      config.minimal = {
        nixos = {
          path = ./config/minimal/nixos;
          description = "A template that create a minimal flake for nixos configuration.";
        };
        home-manager = {
          path = ./config/minimal/home-manager;
          description = "A template that create a minimal flake for home-manager configuration.";
        };
      };
    };
  };
}
