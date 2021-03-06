.PHONY: help
help: ## Shows this help command
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

test: ## Runs unit tests
	$$NEWSBOT_DATABASE_NAME = "unittest.db"
	alembic upgrade head
	pytest
	#rm ./mounts/database/newsbot.db

refresh: ## Removes temp data for a clean start
	rm ./mounts/database/newsbot.db

rmdatabase:
	rm ./mounts/database/newsbot.db

docker-build: ## Build docker image
	docker build -t newsbot . \
		--build-arg CHROME_VERSION=89.0.4389.114-1 \
		--build-arg DRIVER_VERSION=89.0.4389.23

docker-run: ## Runs the application
	docker-compose up

freeze: ## Exports all installed python packages to the requirements.txt
	pip3 freeze > requirements.txt