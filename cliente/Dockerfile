FROM debian:12

RUN apt update && apt install -y \
    iputils-ping \
    net-tools \
    nano \
    openssh-client \
    rsync \
    && apt clean

CMD tail -f /dev/null
