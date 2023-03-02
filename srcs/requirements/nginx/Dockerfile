# penultimate version of stable alpine
FROM 	alpine:3.16.3

# update and upgrade the packages in the Alpine Linux distribution and install the nginx web server without saving the downloaded package files in cash
RUN	apk update && apk upgrade && apk add --no-cache nginx openssl

# generate self signed certificates
RUN 	openssl req \
        -x509 \
        -days 365 \
        -nodes \
        -newkey rsa:2048 \
        -keyout /etc/ssl/private/nginx.key \
        -out /etc/ssl/certs/nginx.crt \
        -subj "/C=DE/ST=BW/L=HN/O=42 Heilbronn gGmbH/OU=Core/CN=rmazurit.42.fr"

# listen to ssl port on runtime
EXPOSE	443

COPY	./conf/nginx.conf /etc/nginx/http.d

# starts the nginx web server in the foreground and not detached from the console
CMD 	["nginx", "-g", "daemon off;"]



