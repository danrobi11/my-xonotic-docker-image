FROM fedora:45

RUN dnf install -y --setopt=install_weak_deps=False \
    SDL2 \
    alsa-lib \
    alsa-utils \
    mesa-dri-drivers \
    mesa-libGL \
    libglvnd-glx \
    libX11 \
    libXext \
    libXcursor \
    libXi \
    libXrandr \
    libXinerama \
    libXxf86vm \
    wget unzip && \
    dnf clean all

RUN wget -O /tmp/xonotic.zip https://dl.xonotic.org/xonotic-0.8.6.zip && \
    unzip /tmp/xonotic.zip -d /opt && \
    mv /opt/Xonotic /opt/xonotic && \
    rm /tmp/xonotic.zip && \
    chmod +x /opt/xonotic/xonotic-linux64-sdl

WORKDIR /opt/xonotic
ENTRYPOINT ["./xonotic-linux64-sdl"]
