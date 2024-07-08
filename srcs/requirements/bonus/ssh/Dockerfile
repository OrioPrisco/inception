FROM alpine:3.19
RUN apk update
RUN apk add openssh-server

WORKDIR /etc/ssh/
RUN ssh-keygen -A

ARG SSH_USER
ARG SSH_PASSWORD

RUN adduser -D $SSH_USER && echo "$SSH_USER:$SSH_PASSWORD" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]
