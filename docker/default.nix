{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "geant4";
  version = "11.3.0";

  src = pkgs.fetchurl {
    url = "https://gitlab.cern.ch/geant4/geant4/-/archive/v11.3.0/geant4-v11.3.0.tar.gz";
    sha256 = "2dcdr/iJCnteDjPqmmX+YwitZxMAC0O6ZwWvdweOfq0=";
  };

  nativeBuildInputs = with pkgs; [
    cmake
    gnumake
  ];

  buildInputs = with pkgs; [
    xercesc
    expat
    zlib
    cmake
    gnumake
  ];

  cmakeFlags = [
    "-DCMAKE_INSTALL_PREFIX=$out"
    "-DGEANT4_INSTALL_DATA=ON"
    "-DGEANT4_USE_SYSTEM_EXPAT=ON"
    "-DGEANT4_USE_SYSTEM_ZLIB=ON"
  ];

  configurePhase = "
    mkdir build
    cd build
    cmake .. ${toString cmakeFlags}
  ";

  buildPhase = "
    make -j10
  ";

  installPhase = "
    make install -j10
  ";

  shellHook = "
    source $out/bin/geant4.sh
  ";

  meta = with pkgs.lib; {
    description = "Geant4 simulation toolkit";
    homepage = "https://geant4.web.cern.ch/";
  };
}
