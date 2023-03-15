FROM archlinux:20191205

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

# Fix pacman key problem
# https://bbs.archlinux.org/viewtopic.php?id=193382
RUN rm -R /etc/pacman.d/gnupg/
RUN gpg --refresh-keys
RUN pacman-key --init && pacman-key --populate
# https://bbs.archlinux.org/viewtopic.php?id=226770
RUN pacman -Sy pacman
RUN pacman -Sy $(pacman -Qq)
#RUN pacman-key --refresh-keys

# Update packages
RUN yes | LC_ALL=en_US.UTF-8 pacman -Syu

VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/sh"]
