{ inputs, ... }:
let
  inherit (inputs.nixpkgs) lib;
in
{
  perSystem = { system, ... }: {
    legacyPackages = import inputs.nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  };
}
