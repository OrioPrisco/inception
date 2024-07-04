FROM alpine:3.19
RUN apk update 
RUN apk add redis

ARG REDIS_PASSWORD

COPY ./conf/redis.conf /etc/redis.conf

RUN sed -i "s/REDIS_PASSWORD/$REDIS_PASSWORD/;" /etc/redis.conf

CMD ["redis-server", "/etc/redis.conf"]
