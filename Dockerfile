FROM ansible/ubuntu14.04-ansible:stable
MAINTAINER Mark Stillwell <mark@stillwell.me>

COPY . /var/cache/docker/glance
WORKDIR /var/cache/docker/glance

RUN if [ ! -f playbooks/group_vars/all.yml ]; then \
      mkdir -p playbooks/group_vars;\
      ln -s ../../defaults/main.yml playbooks/group_vars/all.yml;\
    fi && \
    ansible-playbook -i inventories/local.ini playbooks/install.yml && \
    rm -rf /var/lib/apt/lists/*

VOLUME [ "/etc/glance", "/var/lib/glance", "/var/log/glance", \
         "/var/log/supervisor" ]

CMD [ "/usr/bin/supervisord" ]

EXPOSE 9191 9292
