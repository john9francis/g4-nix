# NOTE:
- This default.nix file is for docker and does not include any visualization drivers


# For me: reminder how to build and push docker image
```sh
docker build --no-cache -t g4-nix .
docker run -it g4-nix
docker tag g4-nix john9francis/g4-nix:11.3.0
docker tag g4-nix john9francis/g4-nix:latest
docker login
docker push john9francis/g4-nix:11.3.0
docker push john9francis/g4-nix:latest
```