FROM fedora:42

RUN dnf install -y --setopt=install_weak_deps=False SDL2 mesa-dri-drivers && \
    dnf clean all

# Place your Xonotic/ folder next to the Containerfile when building
COPY Xonotic /opt/xonotic

WORKDIR /opt/xonotic
ENTRYPOINT ["./xonotic-linux64-sdl"]
