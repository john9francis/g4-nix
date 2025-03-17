# Geant4 installation using nix

This repository includes a default.nix file that will automatically install and setup Geant4. This will work on macOS, linux, and windows (with windows subsystem for linux). It also works on docker without visualization (see the docker folder)

# Dependencies
- [nix](https://nixos.org/download/)

# Why nix?
1. Easy syntax. You can look over the default.nix file and get an idea of exactly what is being installed on your computer.
2. Reproducability. Nix allows you to write installation scripts that you can share with anyone who want to duplicate your setup.
3. Version control. You can specify versions for all your packages and nix will ensure consistency with the versions. This saves you from the annoyance of having a dependency update without your knowledge and break your configuration.

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
* Note: Use `nix-shell` to have access to `cmake` and `make` if you need to build a Geant4 app. Otherwise, you should be able to run Geant4 apps without the nix shell.

# Useful nix commands
To free up nix build artifacts and stuff:
```sh
nix-collect-garbage
```

# Try this out on docker!
Using nix I created a geant4 docker image that's only about 2 GB. Check it out on [docker hub.](https://hub.docker.com/r/john9francis/g4-nix)