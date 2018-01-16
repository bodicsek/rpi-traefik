FROM bodicsek/alpine-armhf:edge
ADD https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-arm /traefik
RUN apk upgrade --no-cache &&\
    apk add --no-cache ca-certificates &&\
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
