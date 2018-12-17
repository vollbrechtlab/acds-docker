# ACDS docker

## Preparation
Put all everything in public_html folder except the sql dump file.

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

