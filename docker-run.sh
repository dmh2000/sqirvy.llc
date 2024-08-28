#!/bin/sh
docker run -it --rm -d -p 8080:80 --name web -v ./site-content:/usr/share/nginx/html nginx

