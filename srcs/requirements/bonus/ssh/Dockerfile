FROM alpine:3.19
RUN apk update
RUN apk add openssh-server

WORKDIR /etc/ssh/
RUN ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"]
