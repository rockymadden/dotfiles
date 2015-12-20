PREFIX ?= ./build
LIBDIR := $(shell greadlink -f ${PREFIX}/lib)
USERDIR := $(shell greadlink -f ~/)

install:
	@-mkdir -p "${PREFIX}/lib/"
	@-rsync -a src/ "${PREFIX}/lib/"
	@-chmod -R g-rwx "${PREFIX}/lib/"
	@-chmod -R o-rwx "${PREFIX}/lib/"
	@-find "${LIBDIR}" -type d | tail -n +2 | sed "s|${LIBDIR}|${USERDIR}|" | xargs -I{} mkdir -p {}
	@-find "${LIBDIR}" -type f ! -name '.DS_Store' | sed "s|${LIBDIR}|${USERDIR}|" | xargs -I{} rm -f {}
	@-find "${LIBDIR}" -type f ! -name '.DS_Store' | sed "s|${LIBDIR}||" | xargs -I{} ln -s ${LIBDIR}{} ${USERDIR}{}

uninstall:
	@-find "${LIBDIR}" -type f ! -name '.DS_Store' | sed "s|${LIBDIR}|${USERDIR}|" | xargs -I{} rm -f {}
	@-rm -rf "${PREFIX}"

.PHONY: install uninstall
