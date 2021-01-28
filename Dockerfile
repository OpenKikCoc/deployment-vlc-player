FROM binacslee/novnc-base:baseimage

RUN apt-get update && \
    apt-get install -y \
        vlc && \
    sed -i 's/geteuid/getppid/' /usr/bin/vlc