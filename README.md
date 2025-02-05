# Geant4 installation using nix

# Platform specific requirements:
- On windows, you must use WSL

# Geant4 details
- [X] qt5
- [X] datasets
- [X] examples

# Running on your own machine
1. [Download nix](https://nixos.org/download/)
2. Open a terminal and run: `nix-build`
3. Wait for Geant4 to install and enjoy


# Useful nix commands
To free up build artifacts and stuff:
```sh
nix-collect-garbage
```