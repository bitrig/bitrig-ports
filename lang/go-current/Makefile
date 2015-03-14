# $OpenBSD: Makefile,v 1.5 2012/07/30 15:49:55 espie Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		Go programming language

VERSION =		20150403
EXTRACT_SUFX =		.src.tar.gz
DISTNAME = 		go-${VERSION}
PKGNAME = 		go-${VERSION}
CATEGORIES =		lang

HOMEPAGE =		http://golang.org/

DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread

MASTER_SITES =		http://mirror2.us.bitrig.org/pub/bitrig/distfiles/ \
			http://bitrig.antarctica.no/pub/bitrig/distfiles/

BUILD_DEPENDS =		shells/bash
# needs to be installed for git target
#			devel/git

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	None
SUBST_VARS =		GOEXE GOCFG

WRKDIST =		${WRKDIR}/go
WRKSRC =		${WRKDIST}/src

GOOS = 			openbsd
GOARCH =		unknown
GOROOT = 		${PREFIX}/go

.if ${MACHINE_ARCH} == "amd64"
GOARCH =		amd64
EXEPREFIX =		6
DISTFILES +=		go-bootgo-amd64-20150403.tar.gz
.elif ${MACHINE_ARCH} == "i386"
GOARCH =		386
EXEPREFIX =		8
.endif

GOCFG =			/${GOOS}_${GOARCH}
GOEXE =			${GOCFG}/${EXEPREFIX}

TMPGIT = ${DISTDIR}/tmpgit

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
		GOROOT_BOOTSTRAP=${WRKDIR}/bootgo \
		LD_LIBRARY_PATH=${WRKDIR}/bootgo-libs \
		GOROOT_FINAL=${GOROOT} ./make.bash --no-banner

do-test:
	@cd ${WRKSRC} && \
		ulimit -n 256 -d 2097152 && \
		PATH=${WRKDIST}/bin:${PATH} GOROOT=${WRKDIST} ./run.bash

do-install:
	${INSTALL_PROGRAM} -p ${WRKDIST}/bin/go{,fmt} ${PREFIX}/bin

	${INSTALL_PROGRAM_DIR} ${GOROOT}

	@cd ${WRKDIST} && \
		find . ! -name .hg\* -type f -maxdepth 1 \
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

git:
	@mkdir -p ${TMPGIT}
	if test -d ${TMPGIT}/go; then \
		(cd ${TMPGIT}/go && git pull) \
	else \
		(cd ${TMPGIT} && git clone https://go.googlesource.com/go) \
	fi
	(cd ${TMPGIT} && tar -zcf ${DISTDIR}/go-`date "+%Y%m%d"`.src.tar.gz go)
	make makesum
	rm -rf ${TMPGIT}

.include <bsd.port.mk>
