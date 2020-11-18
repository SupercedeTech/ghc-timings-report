{ mkDerivation, aeson, base, binary, blaze-colonnade, blaze-html
, blaze-markup, bytestring, cassava, colonnade, conduit, containers
, directory, filepath, resourcet, stdenv, text, text-show, vector
}:
mkDerivation {
  pname = "ghc-timings-report";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base binary blaze-colonnade blaze-html blaze-markup
    bytestring cassava colonnade conduit containers directory filepath
    resourcet text text-show vector
  ];
  description = "Get statistical report about how long files were compiled";
  license = stdenv.lib.licenses.mit;
}
