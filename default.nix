let
  pkgs = import <nixpkgs> { };
in
pkgs.haskellPackages.developPackage {
  root = ./.;
  name = "my-haskell-project";
  returnShellEnv = true;
  modifier = drv: pkgs.haskell.lib.addBuildTools drv (with pkgs.haskellPackages; [
    cabal-install
    haskell-language-server
    hlint
    ghc
    ghcid
  ]);
}