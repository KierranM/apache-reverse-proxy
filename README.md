#kierranm/apache-reverse-proxy
<i>A docker image for running an Apache reverse proxy using mod_proxy</i>

This image is set up to look in ```/sites-enabled``` for the apache sites that are available.
 You should mount this directory so that you can edit these files outside of the container.

When this container is first run it will create the 000-default.conf file in the enabled sites directory.

I recommend using the docker link functionality so that you can refer to your other containers using the automatic entries in the /etc/hosts file.

##Installation

To install simply run:
``` bash
	docker run -d --name='proxy' \
		-v /path/to/site/confs:/sites-enabled \
		--link <container-name>:<alias> \
		-p 80:80 \
		kierranm/apache-reverse-proxy
```