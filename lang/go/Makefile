# $OpenBSD: Makefile,v 1.27 2015/12/05 05:01:24 jsing Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =		Go programming language

VERSION =		1.5.2
EXTRACT_SUFX =		.src.tar.gz
DISTNAME = 		go${VERSION}
PKGNAME = 		go-${VERSION}
CATEGORIES =		lang

HOMEPAGE =		https://golang.org/

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread

MASTER_SITES =		https://golang.org/dl/

BUILD_DEPENDS =		lang/go-bootstrap shells/bash

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	None
SUBST_VARS =		GOCFG

WRKDIST =		${WRKDIR}/go
WRKSRC =		${WRKDIST}/src

GOOS = 			openbsd
GOARCH =		unknown
GOROOT = 		${PREFIX}/go
GOROOT_BOOTSTRAP =	${PREFIX}/go/bootstrap

.if ${MACHINE_ARCH} == "amd64"
GOARCH =		amd64
.elif ${MACHINE_ARCH} == "i386"
GOARCH =		386
.endif

GOCFG =			/${GOOS}_${GOARCH}

do-configure:
.	if ${GOARCH} == "unknown"
		@echo "Unable to determine GOARCH for ${MACHINE_ARCH}."
		@exit 1
.	endif


do-build:
	@cd ${WRKSRC} && \
		CC="${CC}" \
		CXX="${CXX}" \
		GOROOT=${WRKDIST} \
		GOBIN=${WRKDIST}/bin \
		GOROOT_FINAL=${GOROOT} \
		GOROOT_BOOTSTRAP=${GOROOT_BOOTSTRAP} ./make.bash --no-banner

do-test:
	@cd ${WRKSRC} && \
		ulimit -n 256 -d 2097152 && \
		PATH=${WRKDIST}/bin:${PATH} GOROOT=${WRKDIST} ./run.bash

do-install:
	${INSTALL_PROGRAM_DIR} ${GOROOT}

	${INSTALL_PROGRAM_DIR} ${GOROOT}/bin
	${INSTALL_PROGRAM} -p ${WRKDIST}/bin/go{,fmt} ${GOROOT}/bin

	@cd ${PREFIX}/bin && \
		ln -s ../go/bin/go go
	@cd ${PREFIX}/bin && \
		ln -s ../go/bin/gofmt gofmt

	@cd ${WRKDIST} && \
		find . -type f -maxdepth 1 \
			-exec ${INSTALL_DATA} -p {} \
			${GOROOT} \;

.	for dir in doc lib misc src pkg
		@cd ${WRKDIST} && \
			find ${dir} -type d \
				-exec ${INSTALL_DATA_DIR} \
				${GOROOT}/{} \;
		@cd ${WRKDIST} && \
			find ${dir} ! -name \*.orig -type f \
				-exec ${INSTALL_DATA} -p {} \
				${GOROOT}/{} \;
.	endfor

	# These get installed via `find' however we need them to be executable
	${INSTALL_PROGRAM_DIR} ${GOROOT}/pkg/tool/${GOOS}_${GOARCH}
	${INSTALL_PROGRAM} -p ${WRKDIST}/pkg/tool/${GOOS}_${GOARCH}/* \
		${GOROOT}/pkg/tool/${GOOS}_${GOARCH}

build-bootgo:
	@rm -rf ${WRKDIR}/tmp
	@mkdir -p ${WRKDIR}/tmp/bootgo
	@mkdir -p ${WRKDIR}/tmp/bootgo-libs
	@cd ${WRKDIST} && tar -cf - * | tar -C ${WRKDIR}/tmp/bootgo -xf -
	@cd ${WRKDIR}/tmp/bootgo && rm -rf api blog doc misc test
	@cd ${WRKDIR}/tmp/bootgo && find . -type d -name testdata | xargs rm -rf
	@find ${WRKDIR}/tmp/bootgo -type f -perm -500 -exec ldd {} \; 2>/dev/null | \
		grep rlib | cut -d"/" -f 2-20 | sort -u | grep -v "\.so$$" | \
		xargs -I % cp /% ${WRKDIR}/tmp/bootgo-libs
	@cd ${WRKDIR}/tmp && tar czf go-bootgo-${ARCH}-$$(date +%Y%m%d).tar.gz bootgo*
	@echo "New bootgo is located at ${WRKDIR}/tmp/go-bootgo-${ARCH}-$$(date +%Y%m%d).tar.gz"

.include <bsd.port.mk>
