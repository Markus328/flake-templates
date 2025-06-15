{
  description = "A tiny collection of flake templates";
  outputs = {self}: {
    templates = {
      eachDefaultSystem = {
        path = ./minimal;
        description = "A template that create a minimal dev flake for each system";
      };
    };
  };
}
