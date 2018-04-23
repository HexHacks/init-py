ENV_DIR = venv

environment: clean
	@echo -- creating environment --
	@echo
	virtualenv ${ENV_DIR}

	@echo To activate environment:
	@echo source ./${ENV_DIR}/bin/activate

install: 
	@echo -- installing --
	@echo
	(\
		source ${ENV_DIR}/bin/activate; \
		pip install -r requirements.txt; \
		python setup.py install; \
	)

clean: clean-environment

clean-environment:
	@echo -- cleaning old environment --
	@echo
	@echo Removing ${ENV_DIR}...
	@if [ -d "${ENV_DIR}" ]; then \
		rm -rf "${ENV_DIR}" \
		rmdir env; \
	fi

	@echo

