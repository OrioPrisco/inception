FROM alpine:3.19
RUN apk update
RUN apk add vsftpd

COPY conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]
