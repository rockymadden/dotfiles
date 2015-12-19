PREFIX ?= ./lib/

install: | stub
	@-rsync -a src/ ${PREFIX}
	@-chmod -R g-rwx ${PREFIX}
	@-chmod -R o-rwx ${PREFIX}

stub:
	@-mkdir -p ${PREFIX}

.PHONY: install stub
