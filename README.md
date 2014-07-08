## Nginx reverse proxy with supervisord

This repository contains a **Dockerfile** of [Nginx](http://nginx.org/), and [Supervisor](http://supervisord.org) for [Docker](https://www.docker.io/)


### Dependencies

* [ubuntu](https://registry.hub.docker.com/_/ubuntu/)
* [Nginx](http://nginx.org/)
* [Supervisor](http://supervisord.org)
* [Docker](https://www.docker.io/)


### Usage 

First you will want to modify / replace the nginx.conf file to meet your RP needs.

Then you can build an image from Dockerfile: `docker build -t yourname/nginx-rp .`

Finally you can run the image like this `docker run -d -p 8080:8080 yourname/nginx-rp`

After few seconds, open `http://<host>8080` to see the proxy page.
