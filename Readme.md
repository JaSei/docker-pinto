# Running pinto with docker

## Installation
 * [Install Docker](https://docs.docker.com/installation/)
### Dockerfile
 * Clone this repo
 * Build image with the commands like:
   `docker build --tag pinto .`

### dockerhub
* `docker pull avastsoftware/pinto`

## pintod

https://metacpan.org/pod/distribution/Pinto/bin/pintod

run service pinto:
`docker run --rm --name pintod -v /var/lib/pinto:/var/lib/pinto -p 3111:3111 pinto`

## pinto

https://metacpan.org/pod/distribution/Pinto/bin/pinto

pull module Mock::Quick from cpan to pinto
`docker run -v /var/lib/pinto/:/var/lib/pinto pinto pinto pull Mock::Quick`

## pintod as service
### systemd
```
cp pinto.service /etc/systemd/system/pinto.service
systemctl enable pinto.service
```
