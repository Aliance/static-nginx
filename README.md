# Docker alpine NGINX image for serving static files

Serve static pages with nginx via docker

## Building an image

```bash
static-nginx $ docker build -t static-nginx .
```

## Running a container

```bash
$ docker run -d -p 8000:80 -v $(pwd)/src:/www --name static static-nginx
```

1) Use any port you wish, in this example I used a `8000`.
2) Mount you static files from `./src` directory to `/www` directory into the container

## Watch access logs

```bash
$ docker exec -it static tail -f /etc/nginx/logs/static.log
```
