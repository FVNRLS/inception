FROM 		alpine:3.16.3

ENV 		DOMAIN_NAME \
    		DB_HOST \
    		DB_NAME \
    		DB_USER \
			DB_ROOT \
    		DB_PASS \
			WP_URL \
    		WP_BLOG_TITLE \
			WP_ROOT_USER \
			WP_ROOT_PASSWORD \
			WP_ROOT_MAIL \
			WP_USER \
    		WP_PASS \
    		WP_USER_MAIL

# INSTALLING PHP8 + TOOLS
RUN 		apk update && apk upgrade && \
			apk add --no-cache \
			php8 \
			php8-fpm \
			php8-mysqli \
		 	php8-json \
			php8-curl \
    		php8-dom \
			php8-exif \
			php8-fileinfo \ 
			php8-mbstring \
    		php8-openssl \
			php8-xml \
			php8-zip \
			php8-cli \
			php8-phar \
			mariadb-client \
			wget \
			ranger

COPY		./conf/setup_wordpress.sh .

RUN 		chmod +x setup_wordpress.sh

WORKDIR 	/var/www/

ENTRYPOINT	["sh", "../../setup_wordpress.sh"]
