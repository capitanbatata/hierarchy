{ mkDerivation, base, directory, exceptions, free, mmorph
, monad-control, mtl, pipes, semigroups, stdenv, transformers
, transformers-base, unix, doctest, hspec, hspec-expectations
}:
mkDerivation {
  pname = "hierarchy";
  version = "0.1.0";
  src = ./.;
  libraryHaskellDepends = [
    base directory exceptions free mmorph monad-control mtl pipes
    semigroups transformers transformers-base unix
  ];
  testHaskellDepends = [ doctest hspec hspec-expectations ];
  homepage = "https://github.com/jwiegley/hierarchy";
  description = "Provide a TreeT type for generating trees, as ListT does for lists";
  license = stdenv.lib.licenses.bsd3;
}
