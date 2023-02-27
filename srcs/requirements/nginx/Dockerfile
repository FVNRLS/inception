# penultimate version of stable alpine
FROM 	alpine:3.16

# update and upgrade the packages in the Alpine Linux distribution and install the nginx web server without saving the downloaded package files in cash
RUN		apk update && apk upgrade && apk add --no-cache nginx

RUN 	apk add --no-cache openssl

RUN 	openssl req -x509 -days 365 -nodes -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=rmazurit.42.fr"

# listen to ssl port on runtime
EXPOSE	443

# starts the nginx web server in the foreground and not detached from the console
CMD 	["nginx", "-g", "daemon off;"]



