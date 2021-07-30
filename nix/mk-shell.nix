{ pkgs, haskellPackages }:

pkgs.mkShell {
  buildInputs = [
    (haskellPackages.ghcWithPackages
      (haskellPackages: with haskellPackages; [ base deepseq ]))
    pkgs.cabal-install
    pkgs.cachix
    pkgs.haskellPackages.ghcid
    pkgs.haskellPackages.hpack
    pkgs.niv
    pkgs.ormolu
  ];
}
