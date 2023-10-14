# Arch Linux - Base distributions

These containers are built from ArchLinux base with active pacman sources (normal or archive). No additional package is installed.

The Dockerfiles are available in the [fruafr/docker-archlinux Github repository](https://github.com/fruafr/docker-archlinux)

The resulting docker containers are available in the [fruafr/archlinux Docker Hub](https://hub.docker.com/repository/docker/fruafr/archlinux)

## Versions History 

## Current

|ArchLinux Version   |Docker image tag                         |Current Version |Repo Branch   |
|--------------------|-----------------------------------------|----------------|--------------|
|latest              |`docker pull fruafr/archlinux:latest`    |daily        |latest        |
|base                |`docker pull fruafr/archlinux:base`    |daily        |base          |
|base-devel          |`docker pull fruafr/archlinux:base-devel`    |?               |base-devel    |

## Versions History

Arch Linux is a lightweight rolling-release distribution with very detailed documentation regarding [setup](https://wiki.archlinux.org/title/Category:Servers).

Oldest versions on docker are :

|Year Released |ArchLinux Version | Docker image tag                    |End of Life |Repo Branch    |
|--------------|------------------|-------------------------------------|------------|---------------|
|2019          |20191205          |`docker pull fruafr/archlinux:20191205`     |     |20191205       |

For this version, the keyring had to be fixed manually by refreshing the keyring and copying the new archlinux-keyring. 
The version 20191006 was not created.

## Pull strategy

The different branches are **not** merged, they live as individual branches.

## Manually starting

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  fruafr/archlinux
```

## Official Distro Release Information
- To pull the latest official docker version : `docker pull archlinux:latest`
- [Docker Hub](https://hub.docker.com/_/archlinux)
- [ArchLinux releases](https://archlinux.org/releng/releases/)

### Current

|ArchLinux Version   |Docker image tag                         |Current Version |Repo Branch   |
|--------------------|-----------------------------------------|----------------|--------------|
|latest              |`docker pull archlinux:latest`    |daily        |latest        |
|base                |`docker pull archlinux:base`    |daily        |base          |
|base-devel          |`docker pull archlinux:base-devel`    |?               |base-devel    |

### Versions History

Arch Linux is a lightweight rolling-release distribution with very detailed documentation regarding [setup](https://wiki.archlinux.org/title/Category:Servers).

Oldest versions on docker are :

|Year Released |ArchLinux Version | Docker image tag                    |End of Life |Repo Branch    |
|--------------|------------------|-------------------------------------|------------|---------------|
|2019          |20191205          |`docker pull archlinux:20191205`     |            |20191205       |
|2019          |20191006          |`docker pull archlinux:20191006`     |            |20191006       |

----
Updated : 2023-10-14
