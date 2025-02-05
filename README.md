# Geant4 installation using nix

# Dependencies: 
- Nix
- Docker

# Running:
macOs or Linux:
```sh
docker run -it -v $(pwd)/g4-nix:/g4-nix nixos/nix
```
Windows:
```sh
docker run -it -v ${PWD}/g4-nix:/g4-nix nixos/nix
```

Then go into g4-nix and run `nix-build`