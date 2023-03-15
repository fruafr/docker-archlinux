FROM archlinux:20191205

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

# Fix pacman key problem
# https://bbs.archlinux.org/viewtopic.php?id=193382
RUN rm -R /etc/pacman.d/gnupg/
RUN gpg --refresh-keys
RUN pacman-key --init && pacman-key --populate

# Fix keyserver issue
RUN echo "keyserver hkp://keyserver.ubuntu.com" >> /etc/pacman.d/gnupg/gpg.conf

# Fix archlinux-keyring issue
RUN wget https://archlinux.org/packages/core/any/archlinux-keyring/download -O archlinux-keyring-20210902-1-any.pkg.tar.zst
RUN pacman -U archlinux-keyring-20210902-1-any.pkg.tar.zst
RUN rm archlinux-keyring-20210902-1-any.pkg.tar.zst
RUN pacman -S archlinux-keyring

#refresh the keys
RUN pacman-key --refresh-keys 

# Update packages
RUN yes | LC_ALL=en_US.UTF-8 pacman -Syu

VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/sh"]
