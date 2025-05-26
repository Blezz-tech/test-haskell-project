let
  pkgs = import <nixpkgs> {
    # localSystem = {
    #   gcc.arch = "alderlake";
    #   gcc.tune = "alderlake";
    #   system = "x86_64-linux";
    # };
  };
in
pkgs.haskell.packages.ghc9122.developPackage {
  root = ./.;
  name = "my-haskell-project";
  modifier = drv: pkgs.haskell.lib.addBuildTools drv ([
    pkgs.haskell.packages.ghc9122.haskell-language-server
    pkgs.haskell.packages.ghc9122.hlint
    pkgs.haskell.packages.ghc9122.ghc
  ] ++ [
    pkgs.haskell.packages.ghc9102.cabal-install
  ] ++ [
    pkgs.ghciwatch
  ]);
}
