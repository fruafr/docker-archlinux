FROM archlinux:latest

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

# Enable init.
RUN pacman -Syu

VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/sh"]
