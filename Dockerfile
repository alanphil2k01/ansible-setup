FROM fedora:latest as base

RUN dnf upgrade -y

RUN dnf install ansible -y

RUN dnf install "@mate-desktop"  "@Development Tools" "@Development Libraries" -y

RUN dnf install i3 dnf-plugins-core -y

RUN dnf install  ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip patch gettext curl lua -y

FROM base AS alan
ARG TAGS
RUN dnf install passwd -y
RUN groupadd --gid 1000 alan
RUN useradd alan --uid 1000 --gid 1000  -p alan -s /bin/bash
RUN echo "alan" | passwd alan --stdin
RUN usermod -aG wheel alan
USER alan
WORKDIR /home/alan/ansible

FROM alan
COPY . .
# CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
