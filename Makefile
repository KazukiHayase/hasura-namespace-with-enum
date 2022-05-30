.PHONY: init
init:
	curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | bash
	hasura update-cli --version v2.7.0
	docker-compose up -d
	hasura metadata apply
	hasura console
