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
3. Wait for Geant4 to install
4. Enjoy running Geant4 apps. Congratulations, you have escaped DLL hell.
* Note: Use `nix-shell` to have access to cmake and make if you need to build a Geant4 app.

# Useful nix commands
To open a nix shell with only cmake and make:
```sh
nix-shell -p cmake gnumake
```
To free up nix build artifacts and stuff:
```sh
nix-collect-garbage
```

# TODO
- [ ] Make it so it only has qt installed when you run it locally, not in docker
- [ ] Push another version to docker hub