# $OpenBSD: Makefile,v 1.42 2015/04/05 13:31:15 sthen Exp $

COMMENT=	checks HTML documents for broken links

V=		9.3
MODPY_EGG_VERSION=${V}
GH_ACCOUNT=	wummel
GH_PROJECT=	linkchecker
GH_TAGNAME=	upstream/$V

CATEGORIES=    	www

HOMEPAGE=	http://wummel.github.com/linkchecker/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/downloads/wummel/linkchecker/ \
		http://distfiles.nl/

EXTRACT_SUFX=	.tar.xz

MODULES=	lang/python

WANTLIB+=	${MODPY_WANTLIB} pthread

RUN_DEPENDS=	devel/desktop-file-utils \
		net/py-dnspython

NO_TEST=	Yes

.include <bsd.port.mk>
