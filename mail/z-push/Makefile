# $OpenBSD: Makefile,v 1.45 2016/03/01 22:07:01 robert Exp $

COMMENT=	ActiveSync protocol implementation

V=		2.2.8
DISTNAME=	z-push-${V}

CATEGORIES=	mail www

HOMEPAGE=	http://z-push.sourceforge.net/

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.z-push.org/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/z-push
TINSTDIR=	${TRUEPREFIX}/z-push
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	mail/zarafa/zarafa,-web \
		lang/php/${MODPHP_VERSION},-imap

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	find ${INSTDIR} -type f -name \*.orig -exec rm -f {} \;
	mv ${INSTDIR}/config.php ${INSTDIR}/config.php.dist
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/z-push.conf \
		${INSTDIR}/z-push.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
