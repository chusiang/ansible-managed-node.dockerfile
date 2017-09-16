# Docker image: Ansible Managed Node

A Docker image of run the [OpenSSH][openssh_official] daemon and [Python][python_official] for [Ansible][ansible_offical].

> WARNING: This docker image can be access with ssh by [*chusiang/ansible-jupyter*][ansible_jupyter] image. Do not use it on the Production Environment, please.

## Supported tags and respective `Dockerfile` links

- `alpine-3.4` [*(alpine-3.4/Dockerfile)*][dockerfile_alpine-3.4]
- `alpine-3.6`, `latest` [*(alpine-3.6/Dockerfile)*][dockerfile_alpine-3.6]
- `archlinux` [*(archlinux/Dockerfile)*][dockerfile_archlinux]
- `centos-6` [*(centos-7/Dockerfile)*][dockerfile_centos-6]
- `centos-7` [*(centos-7/Dockerfile)*][dockerfile_centos-7]
- `debian-7` [*(debian-7/Dockerfile)*][dockerfile_debian-7]
- `debian-8` [*(debian-8/Dockerfile)*][dockerfile_debian-8]
- ~~`gentoo`~~ [*(gentoo/Dockerfile)*][dockerfile_gentoo]
- ~~`opensuse-42.1`~~ [*(opensuse-42.1/Dockerfile)*][dockerfile_opensuse-42.1]
- `opensuse-42.2` [*(opensuse-42.2/Dockerfile)*][dockerfile_opensuse-42.2]
- `opensuse-42.3` [*(opensuse-42.3/Dockerfile)*][dockerfile_opensuse-42.3]
- `ubuntu-14.04` [*(ubuntu-14.04/Dockerfile)*][dockerfile_ubuntu-14.04]
- `ubuntu-16.04` [*(ubuntu-16.04/Dockerfile)*][dockerfile_ubuntu-16.04]

[dockerfile_alpine-3.4]:    https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/alpine-3.4/Dockerfile
[dockerfile_alpine-3.6]:    https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/alpine-3.6/Dockerfile
[dockerfile_archlinux]:     https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/archlinux/Dockerfile
[dockerfile_centos-6]:      https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/centos-6/Dockerfile
[dockerfile_centos-7]:      https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/centos-7/Dockerfile
[dockerfile_debian-7]:      https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/debian-7/Dockerfile
[dockerfile_debian-8]:      https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/debian-8/Dockerfile
[dockerfile_gentoo]:        https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/gentoo/Dockerfile
[dockerfile_opensuse-42.1]: https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/opensuse-42.1/Dockerfile
[dockerfile_opensuse-42.2]: https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/opensuse-42.2/Dockerfile
[dockerfile_opensuse-42.3]: https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/opensuse-42.3/Dockerfile
[dockerfile_ubuntu-14.04]:  https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/ubuntu-14.04/Dockerfile
[dockerfile_ubuntu-16.04]:  https://github.com/chusiang/ansible-managed-node.dockerfile/blob/master/ubuntu-16.04/Dockerfile

## Account

**root** user:

- username: `root`
- password: `root`

**sudo** user:

- username: `docker`
- password: `docker`

[openssh_official]: https://www.openssh.com/
[ansible_offical]:  https://www.ansible.com/
[python_official]:  https://www.python.org/
[ansible_jupyter]: https://hub.docker.com/r/chusiang/ansible-jupyter/

## Build image

1. Get this project.

    ```
    $ git clone https://github.com/chusiang/ansible-managed-node.dockerfile.git
    ```

1. Go to workspace.

    ```
    $ cd ansible-managed-node.dockerfile/
    ```

1. Bunild the image.

    ```
    $ docker build -t chusiang/ansible-managed-node .
    ```

## Run container

1. Get image.
    
    ```
    $ docker pull chusiang/ansible-managed-node
    ```

1. Run the container with daemon mode.
    
    ```
    $ docker run --name ansible-managed-node -P -d chusiang/ansible-managed-node
    be8a15b9d4da5d24610c1fc738cb13086f01101e90f94640360d8d84892de772
    ```

1. Check container process.

    ```
    $ docker ps
    CONTAINER ID        IMAGE                      COMMAND                  CREATED             STATUS              PORTS                     NAMES
    be8a15b9d4da        chusiang/ansible-managed-node   "/usr/sbin/sshd -D"   9 minutes ago      Up 9 minutes       0.0.0.0:32777->22/tcp      ansible-managed-node
    ```

1. Enter container with command line.

    ```
    $ docker exec -it ansible-managed-node bash
    bash-4.3# 
    ```

Enjoy it !

## License

Copyright (c) chusiang from 2016-2017 under the MIT license.
