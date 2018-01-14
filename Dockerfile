FROM bodicsek/alpine-armhf:edge
ADD https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-arm /traefik
RUN apk upgrade --no-cache &&\
    apk add --no-cache ca-certificates &&\
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
