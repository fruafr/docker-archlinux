FROM archlinux:base-devel

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

# Update packages
RUN yes | LC_ALL=en_US.UTF-8 pacman -Syu


VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/sh"]
