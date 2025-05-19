let
  pkgs = import <nixpkgs> {
    # localSystem = {
    #   gcc.arch = "alderlake";
    #   gcc.tune = "alderlake";
    #   system = "x86_64-linux";
    # };
  };
in
pkgs.haskellPackages.developPackage {
  root = ./.;
  name = "my-haskell-project";
  modifier = drv: pkgs.haskell.lib.addBuildTools drv (with pkgs.haskellPackages; [
    cabal-install
    haskell-language-server
    hlint
    ghc
    ghcid
  ]);
}
