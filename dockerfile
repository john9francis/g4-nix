FROM nixos/nix:2.26.1

WORKDIR /g4-nix

COPY ./default.nix .

RUN nix-build