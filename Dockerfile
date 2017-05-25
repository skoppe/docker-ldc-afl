FROM base/devel

MAINTAINER Sebastiaan Koppe <mail@skoppe.eu>

RUN pacman -Sy --noconfirm git gcc make dub ldc && \
        git clone https://github.com/skoppe/afl && \
        cd afl && \
        make && \
        pacman -Rns git make || \
	true

