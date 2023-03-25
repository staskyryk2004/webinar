# docker image bace on caddy image

 FROM caddy:2.0.0-alpine

# workdir
WORKDIR /usr/share/caddy

# copy all files

COPY . .
# expose part
EXPOSE 80
# run caddy
CMD [ "caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile" ]
