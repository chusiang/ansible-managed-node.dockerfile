FROM gentoo/stage3-amd64

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

# Update the index of available packages.
RUN emerge --sync

# Install the requires portage package and python.
RUN emerge python:2.7 dev-python/pip sudo net-misc/curl wget bash-completion gentoolkit

# switch python to v2.7.
RUN eselect python set 1

# Upgrade the pip to lastest.
RUN pip install -U pip

# Setup the ansible.
RUN pip install ansible

# for disable localhost warning message.
RUN mkdir /etc/ansible && \
      /bin/echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

# install openssh with ansible.
RUN ansible localhost -m portage -a 'package=openssh state=present' -vvvv

# Setting the sshd.
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Generate the ssh host keys.
RUN ssh-keygen -A

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Create a new user.
#
# - username: docker
# - password: docker
RUN useradd --create-home --shell /bin/bash \
      --password $(openssl passwd -1 docker) docker

# Add sudo permission.
RUN echo 'docker ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Setting ssh public key.
RUN wget https://raw.githubusercontent.com/chusiang/ansible-jupyter.dockerfile/master/files/ssh/id_rsa.pub \
      -O /tmp/authorized_keys && \
      mv /tmp/authorized_keys /home/docker/.ssh/ && \
      chown -R docker:docker /home/docker/.ssh/ && \
      chmod 644 /home/docker/.ssh/authorized_keys && \
      chmod 700 /home/docker/.ssh

EXPOSE 22

# Run ssh server daemon.
CMD ["/usr/sbin/sshd", "-D"]

