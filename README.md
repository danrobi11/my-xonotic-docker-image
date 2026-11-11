# my-xonotic-docker-image
my-xonotic-docker-image

# How to:

Create: ~/xonotic-config

## Podman commands:
```
podman pull ghcr.io/danrobi11/xonotic:latest

podman run -d --name xonotic --security-opt label=disable --userns=keep-id -e DISPLAY=$DISPLAY -e SDL_VIDEODRIVER=x11 -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/xonotic-config:/opt/xonotic/.xonotic --device /dev/dri ghcr.io/danrobi11/xonotic:latest
