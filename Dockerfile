# docker-privoxy
FROM ubuntu:12.04

RUN apt-get install privoxy

RUN echo "listen-address  0.0.0.0:9999" > /etc/privoxy/config && \
    echo " forward-socks5  /  127.0.0.1:8888" >> /etc/privoxy/config
  
CMD [privoxy --pidfile /var/run/privoxy.pid /etc/privoxy/config]
