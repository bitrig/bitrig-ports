# $OpenBSD: Makefile,v 1.5 2012/07/30 15:49:55 espie Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		Go programming language

VERSION =		20130411
EXTRACT_SUFX =		.src.tar.gz
DISTNAME = 		go-${VERSION}
PKGNAME = 		go-${VERSION}
CATEGORIES =		lang
REVISION =		1


HOMEPAGE =		http://www.golang.org/

MAINTAINER = 		Marco Peereboom <marco@peereboom.us>

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB =		c m

MASTER_SITES =		http://go.googlecode.com/files/

BUILD_DEPENDS =		shells/bash
# needs to be installed for hg target
#			devel/mercurial

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
PKG_ARGS +=		-Damd64=1
PKG_ARGS +=		-Di386=0
.elif ${MACHINE_ARCH} == "i386"
GOARCH =		386
EXEPREFIX =		8
PKG_ARGS +=		-Damd64=0
PKG_ARGS +=		-Di386=1
.else
PKG_ARGS += 		-Damd64=0 -Di386=0
.endif

GOCFG =			/${GOOS}_${GOARCH}
GOEXE =			${GOCFG}/${EXEPREFIX}

TMPHG = ${DISTDIR}/tmphg

do-configure:
.	if ${GOARCH} == "unknown"
		@echo "Unable to determine GOARCH for ${MACHINE_ARCH}."
		@exit 1
.	endif


do-build:
	@cd ${WRKSRC} && \
		GOROOT=${WRKDIST} \
		GOBIN=${WRKDIST}/bin \
		GOROOT_FINAL=${GOROOT} ./make.bash --no-banner

do-regress:
	@cd ${WRKSRC} && \
		ulimit -n 256 -d 2097152 && \
		PATH=${PATH}:${WRKDIST}/bin GOROOT=${WRKDIST} ./run.bash

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bin/go{,doc,fmt} ${PREFIX}/bin

	${INSTALL_PROGRAM_DIR} ${GOROOT}

	@cd ${WRKDIST} && \
		find . ! -name .hg\* -type f -maxdepth 1 \
			-exec ${INSTALL_DATA} {} \
			${GOROOT} \;

.	for dir in doc include lib src pkg misc
		@cd ${WRKDIST} && \
			find ${dir} -type d \
				-exec ${INSTALL_DATA_DIR} \
				${GOROOT}/{} \;
		@cd ${WRKDIST} && \
			find ${dir} ! -name \*.orig -type f \
				-exec ${INSTALL_DATA} {} \
				${GOROOT}/{} \;
.	endfor

	# These get installed via `find' however we need them to be executable
	${INSTALL_PROGRAM_DIR} ${GOROOT}/pkg/tool/${GOOS}_${GOARCH}
	${INSTALL_PROGRAM} ${WRKDIST}/pkg/tool/${GOOS}_${GOARCH}/* \
		${GOROOT}/pkg/tool/${GOOS}_${GOARCH}

hg:
	@mkdir -p ${TMPHG}
	if test -d ${TMPHG}/go; then \
		(cd ${TMPHG}/go && hg pull && hg update) \
	else \
		(cd ${TMPHG} && hg clone https://code.google.com/p/go/) \
	fi
	(cd ${TMPHG} && tar -zcf ${DISTDIR}/go-`date "+%Y%m%d"`.src.tar.gz go)
	make makesum
	rm -rf ${TMPHG}

.include <bsd.port.mk>
