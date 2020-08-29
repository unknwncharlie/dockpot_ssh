FROM ubuntu:latest

RUN apt update -y
RUN apt install openssh-server -y
RUN apt install rsyslog -y

RUN useradd -ms /bin/bash admin
RUN echo "admin:password" | chpasswd

EXPOSE 22

RUN systemctl enable ssh
RUN systemctl enable rsyslog

CMD chown syslog:adm /var/log/auth.log; service rsyslog start; service ssh start; /bin/bash
