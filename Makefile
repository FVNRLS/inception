# check if ~/data directory exists, otherwise create it and set permissions
ifneq ("$(wildcard /home/$(USER)/data)","")
data_dir_exists := 1
endif

ifeq ($(data_dir_exists),)
$(info Creating data directory...)
$(shell mkdir -p /home/$(USER)/data/mariadb)
$(shell mkdir -p /home/$(USER)/data/wordpress)
$(shell chmod -R 777 /home/$(USER)/data)
endif

name = simple_nginx_html

# start the Docker Compose services using the configuration
all:
	@printf "Starting configuration ${name}...\n"
	@cd srcs && docker-compose up

# rebuild the Docker images and starting the services
build:
	@printf "Building configuration ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml up --build

# stop and remove the containers, networks, and volumes created by the up 
down:
	@printf "Stopping configuration ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml down

# deletes unused containers, networks, images and volumes 
clean: down
	@printf "Deleting configuration ${name}...\n"
	@docker system prune -a --force

re: clean build

# removes all docker configurations - full cleanup
fclean: clean
	@printf "Deleting all docker configurations...\n"
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force

.PHONY : all build down re clean fclean
