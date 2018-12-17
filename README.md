# ACDS docker

## Preparation
Put all server files in public_html folder except the sql dump file.

## Build
```shell
docker build -t acds .
```

## Run in background
```shell
docker run -p 8080:80 -it acds /bin/bash
```

## Run in foreground
```shell
docker run -p 8080:80 -id acds /bin/bash
```

## Useage
Browse to localhost:8080

## Note
Use either use port forwarding or allow port 80 to be used so that the 8080 port is not used.
