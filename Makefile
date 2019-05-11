CURRENT_DIR = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
FLAMES = $(sort $(dir $(wildcard flames/*/)))




lint:
	@# Check if each flame has a README
	@$(foreach flame,\
		$(FLAMES),\
		echo "################################################################################"; \
		echo "# Checking $(flame)"; \
		echo "################################################################################"; \
		if ! test/avail.sh $(flame); then \
			exit 1; \
		fi; \
		if ! test/valid.sh $(flame); then \
			exit 1; \
		fi; \
		if ! test/meta.yml.sh $(flame); then \
			exit 1; \
		fi; \
		if ! test/readme.sh $(flame); then \
			exit 1; \
		fi; \
	)
