# Docker image: Ansible Managed Node

A Docker image of run [OpenSSH][openssh_official] daemon and [Python][python_official] for [Ansible][ansible_offical].

[openssh_official]: https://www.openssh.com/
[ansible_offical]:  https://www.ansible.com/
[python_official]:  https://www.python.org


## Supported tags and respective `Dockerfile` links

<!-- 
- `alpine-3.4`, `latest` [*(alpine/Dockerfile)*][dockerfile_alpine]
- `archlinux` [*(archlinux/Dockerfile)*][dockerfile_archlinux]
- `centos-7` [*(centos-7/Dockerfile)*][dockerfile_centos-7]
- `debian-7` [*(debian-7/Dockerfile)*][dockerfile_debian-7]
- `debian-8` [*(debian-8/Dockerfile)*][dockerfile_debian-8]
- `gentoo` [*(gentoo/Dockerfile)*][dockerfile_gentoo]
- `opensuse-42.1` [*(opensuse-42.1/Dockerfile)*][dockerfile_opensuse-42.1] -->
- `ubuntu-14.04` [*(ubuntu-14.04/Dockerfile)*][dockerfile_ubuntu-14.04]


[dockerfile_alpine]:        https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/alpine/Dockerfile
[dockerfile_archlinux]:        https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/archlinux/Dockerfile
[dockerfile_centos-7]:      https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/centos-7/Dockerfile
[dockerfile_debian-7]:      https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/debian-7/Dockerfile
[dockerfile_debian-8]:      https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/debian-8/Dockerfile
[dockerfile_gentoo]:        https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/gentoo/Dockerfile
[dockerfile_opensuse-42.1]:  https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/opensuse-42.1/Dockerfile
[dockerfile_ubuntu-14.04]:  https://github.com/chusiang/ansible-jupyter.dockerfile/blob/master/ubuntu-14.04/Dockerfile

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
    $ docker exec -it ansible-managed-node sh
    / #
    ```

Enjoy it !
