.PHONY: runserver migrate shell createsuperuser

TAG="\n\n\033[0;32m\#\#\# "
END=" \#\#\# \033[0m\n"

HOST=0.0.0.0
PORT=5000
PROJECT_NAME=request_response_project
PYTHONPATH=$(PROJECT_NAME)
DJANGO_SETTINGS=$(PROJECT_NAME).settings

django-command = django-admin $(1) $(2) --settings $(DJANGO_SETTINGS) --pythonpath $(PYTHONPATH)

runserver:
	@echo $(TAG)Running Server $(END)
	$(call django-command, runserver, $(HOST):$(PORT))

shell:
	@echo $(TAG)Running Shell $(END)
	$(call django-command, shell)

migrate:
	@echo $(TAG)Migrating Database$(END)
	$(call django-command, migrate)

makemigrations:
	@echo $(TAG)Creating Migrations$(END)
	$(call django-command, makemigrations)

createsuperuser:
	@echo $(TAG)Create Superuser$(END)
	$(call django-command, createsuperuser)

notebook:
	PYTHONPATH=$(realpath sample_project) jupyter notebook --ip=127.0.0.1
