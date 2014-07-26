# $OpenBSD: Makefile,v 1.14 2013/03/11 11:12:33 espie Exp $

COMMENT=	japanese groff

CATEGORIES=	japanese textproc print

PKGNAME=	ja-groff-1.10_0.99
REVISION=	2
DISTNAME=	groff-1.10

PATCHFILES=	jgroff-0.99.diff.gz:0

MASTER_SITES=	${MASTER_SITE_GNU:=groff/}

MASTER_SITES0=	ftp://ftp.ae.keio.ac.jp/pub/GNU/ \
                ftp://ftp.tohoku.ac.jp/pub/GNU/japanese/


PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m
WANTLIB +=		c++ c++abi pthread

PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu old dest
USE_GROFF =	Yes

#post-configure:
#	@cd ${WRKSRC}/xditview && ${SETENV} ${MAKE_ENV} ${XMKMF}
#
#post-build:
#	@cd ${WRKBUILD}/xditview && ${SETENV} ${MAKE_ENV} \
#	    make ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
#
#post-install:
#	@cd ${WRKBUILD}/xditview && ${SETENV} ${MAKE_ENV} \
#	    make ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} install install.man

.include <bsd.port.mk>
