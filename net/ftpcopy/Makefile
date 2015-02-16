# $OpenBSD: Makefile,v 1.14 2015/02/16 22:57:10 naddy Exp $

COMMENT =	FTP listing and transfer tools

DISTNAME =	ftpcopy-0.6.7
REVISION =	0
CATEGORIES =	net

HOMEPAGE =	http://www.ohse.de/uwe/ftpcopy.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =	http://www.ohse.de/uwe/ftpcopy/

MAKE_FLAGS =	CC="${CC}"
FAKE_FLAGS =	prefix="${DESTDIR}/${PREFIX}"

WRKDIST =	${WRKDIR}/web/${DISTNAME}

NO_TEST =	Yes

#force use of clang
post-patch:
	echo clang > ${WRKSRC}/src/conf-cc
	echo clang > ${WRKSRC}/src/conf-ld

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpcopy ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpls ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/command/ftpcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/* ${PREFIX}/man/man1
                
.include <bsd.port.mk>
