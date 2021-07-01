build:
	@docker-compose -f./srcs/docker-compose.yaml build
up:
	@docker-compose -f./srcs/docker-compose.yaml up -d
ps:
	@docker-compose -f./srcs/docker-compose.yaml ps
stop:
	@docker-compose -f./srcs/docker-compose.yaml stop
start:
	@docker-compose -f./srcs/docker-compose.yaml start
rm:
	@docker-compose -f./srcs/docker-compose.yaml rm
