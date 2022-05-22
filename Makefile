
AWS_FOLDER=${HOME}/.aws

define ensure-aws-folder
	$(shell if [ ! -d '${AWS_FOLDER}' ]; then mkdir -p ${AWS_FOLDER}; fi);
endef

.PHONY: build
build:
	@cd image && U_ID=$(shell id -u) G_ID=$(shell id -g) docker compose build

.PHONY: aws-auth
aws-auth: ${ensure-aws-folder}
	@U_ID=$(shell id -u) G_ID=$(shell id -g) docker compose -f image/docker-compose.yml run --rm aws-auth ${username} ${mfa_code}