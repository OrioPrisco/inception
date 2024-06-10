FROM alpine:3.19
RUN apk update && apk add nginx openssl
RUN mkdir /etc/nginx/ssl/
RUN openssl req -newkey rsa:4096  -x509  -sha512  -days 365 -nodes -out /etc/nginx/ssl/certificate.pem -keyout /etc/nginx/ssl/privatekey.pem -subj "/C=FR"
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]
