# $OpenBSD: Makefile,v 1.37 2016/01/03 10:18:36 benoit Exp $

COMMENT =		convert HTML pages to PDF/PS format

V =			1.8.29
DISTNAME =		htmldoc-${V}
CATEGORIES =		print www

HOMEPAGE =		http://www.msweet.org/projects.php?Z1

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m ssl z jpeg png
WANTLIB += c++ c++abi

DISTFILES =		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES =		http://www.msweet.org/files/project1/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/


LIB_DEPENDS =		graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS +=	--without-gui --disable-gnutls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"
PORTHOME =		${WRKDIR}

post-extract:
	rm -r ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

post-configure:
	@sed -i "s,\\${DESTDIR},," ${WRKSRC}/config.h

NO_TEST =		Yes

.include <bsd.port.mk>
