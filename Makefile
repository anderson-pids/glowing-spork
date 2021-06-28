
AWS_FOLDER=${HOME}/.aws

define ensure-aws-folder
	$(shell if [ ! -d '${AWS_FOLDER}' ]; then mkdir -p ${AWS_FOLDER}; fi);
endef

# .PHONY: build
# build: build-base

.PHONY: aws-auth
aws-auth: ${ensure-aws-folder}

.PHONY: build-base
build-base:
	docker build -t andersonpids/glowing-spork:base base