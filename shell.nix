let
  pkgs = import <nixpkgs> { };
  haskellPackages = pkgs.haskellPackages;
in pkgs.mkShell {
  packages = [
    # (pkgs.callPackage ./default.nix {})
    haskellPackages.haskell-language-server
    haskellPackages.hlint
    pkgs.ghc
  ];
}
