# $OpenBSD: Makefile,v 1.14 2016/01/30 09:26:43 jasper Exp $

PORTROACH_COMMENT=	newer versions (>= 0.1.0) require puppetdb 4
PORTROACH=		limit:^0

COMMENT=		web interface to PuppetDB

MODPY_EGG_VERSION=	0.0.5
DISTNAME=		puppetboard-${MODPY_EGG_VERSION}
CATEGORIES=		www
REVISION=		0

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		databases/py-puppetdb>=0.1.0,<0.2.0 \
			www/py-flask-wtf>=0.9.4p0 \
			www/py-gunicorn \
			www/py-requests

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/puppetboard
SUBST_VARS+=		INSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	mv ${INSTDIR}/puppetboard/default_settings.py \
		${INSTDIR}/puppetboard/default_settings.py.dist
	${INSTALL_DATA_DIR} ${INSTDIR}/puppetboard/{public,tmp}/
	${INSTALL_DATA} ${FILESDIR}/puppetboard_wsgi.py ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
