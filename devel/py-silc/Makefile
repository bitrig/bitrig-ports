# $OpenBSD: Makefile,v 1.21 2016/03/20 16:12:23 naddy Exp $

COMMENT=	Python bindings for the SILC toolkit

V=		0.5
DISTNAME=	pysilc-${V}
PKGNAME=	py-silc-${V}
REVISION=	6
EPOCH=		0
CATEGORIES=	devel

HOMEPAGE=	http://www.liquidx.net/pysilc/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread silc>=7 silcclient>=5

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python-silc.berlios/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python converters/libiconv

LIB_DEPENDS=	devel/silc-toolkit

NO_TEST=	Yes

pre-build:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-silc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-silc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-silc
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-silc

.include <bsd.port.mk>
