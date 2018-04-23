ENV_DIR = env

install: environment
	@echo -- installing to environment --
	@echo
	(\
		source ${ENV_DIR}/bin/activate; \
		pip install -r requirements.txt; \
		python setup.py install; \
	)

environment: clean-environment
	@echo -- creating environment --
	@echo

	virtualenv ${ENV_DIR}

	@echo
	@echo To activate environment:
	@echo source ./${ENV_DIR}/bin/activate


clean: clean-environment clean-install

clean-install:
	@echo -- cleanup stuff generated from setup.py --
	@echo
	rm -rf build
	rm -rf dist
	rm -rf sample.egg-info

clean-environment:
	@echo -- cleaning environment --
	@echo
	rm -rf ${ENV_DIR}

