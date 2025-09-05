{
  description = "A tiny collection of flake templates";
  outputs = {self}: {
    templates = {
      dev.minimal = {
        path = ./minimal;
        description = "A template that create a minimal dev flake for each system.";
      };
      config.minimal.nixos = {
        path = ./config/minimal/nixos;
        description = "A template that create a minimal flake for nixos configuration.";
      };
    };
  };
}
