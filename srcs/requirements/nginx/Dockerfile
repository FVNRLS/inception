# penultimate version of stable alpine
FROM 	alpine:3.16

# update and upgrade the packages in the Alpine Linux distribution and install the nginx web server without saving the downloaded package files in cash
RUN		apk update && apk upgrade && apk add --no-cache nginx

# listen to ssl port on runtime
EXPOSE	443

# starts the nginx web server in the foreground and not detached from the console
CMD 	["nginx", "-g", "daemon off;"]



