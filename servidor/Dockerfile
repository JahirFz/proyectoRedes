FROM debian:12

RUN apt update && apt install -y \
    iputils-ping \
    net-tools \
    nano \
    sudo \
    cron \
    at \
    rsyslog \
    openssh-server \
    passwd \
    quota \
    rsync \
    procps \
    && apt clean

RUN mkdir -p /var/run/sshd /scripts /respaldos /datos

RUN echo 'root:root123' | chpasswd

CMD service ssh start && service cron start && service rsyslog start && tail -f /var/log/syslog
