# $OpenBSD: Makefile,v 1.43 2015/04/06 13:11:14 kirby Exp $

COMMENT-main=	checks HTML documents for broken links, CLI
COMMENT-x11=	checks HTML documents for broken links, GUI

V=		9.3
REVISIN-main=	0
MODPY_EGG_VERSION=${V}
GH_ACCOUNT=	wummel
GH_PROJECT=	linkchecker
GH_TAGNAME=	upstream/$V

DISTNAME=	${GH_PROJECT}-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-x11=	${GH_PROJECT}-gui-${V}
CATEGORIES=    	www

HOMEPAGE=	http://wummel.github.com/linkchecker/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/downloads/wummel/linkchecker/ \
		http://distfiles.nl/

EXTRACT_SUFX=	.tar.xz

MODULES=	lang/python

WANTLIB+=	${MODPY_WANTLIB} pthread

RUN_DEPENDS-main=	net/py-dnspython \
			www/py-requests

RUN_DEPENDS-x11=	devel/desktop-file-utils \
			www/linkchecker,-main \
			x11/gtk+3,-guic \
			x11/py-qt4

SEPARATE_BUILD=		Yes
MULTI_PACKAGES=		-main -x11

NO_TEST=	Yes

post-extract:
	@perl -pi -e 's,logo48x48,linkchecker,' ${WRKSRC}/doc/*.desktop

post-install:
.for s in 16 32 48 64 128
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/doc/html/logo${s}x${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/linkchecker.png
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/html/lccollection.qhcp \
		${PREFIX}/share/linkchecker/lccollection.qhc

.include <bsd.port.mk>
