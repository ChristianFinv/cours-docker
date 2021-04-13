ARG version=latest
FROM ubuntu:$version
#MAINTAINER JCD "jcd717@outlook.com"

LABEL maintainer="JCD <jcd717@outlook.com>" \
      description="test" \
      auteur="bruno dubois" \
      cours="13.04.2021"

COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh ; \
    echo coucou >test.txt

ARG hbs=1

ENV HEARTBEATSTEP $hbs


# information de port réseau utile
EXPOSE 1234/udp 4321/tcp

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]



