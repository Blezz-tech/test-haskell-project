let
  pkgs = import <nixpkgs> { };
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
