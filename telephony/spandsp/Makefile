# $OpenBSD: Makefile,v 1.17 2016/03/11 21:27:08 mmcc Exp $

COMMENT=	DSP library for telephony

DISTNAME=	spandsp-0.0.6
REVISION=	0
CATEGORIES=	telephony
MASTER_SITES=	${HOMEPAGE}downloads/spandsp/

SHARED_LIBS=	spandsp	7.0

HOMEPAGE=	http://www.soft-switch.org/

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c jpeg m tiff z

WRKDIST=	${WRKDIR}/spandsp-0.0.6

LIB_DEPENDS+=	graphics/tiff

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/config
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

# Test suite included, but requires many build dependencies
# and proprietary files from standards bodies.
NO_TEST=	Yes

DOCS=		README DueDiligence

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spandsp
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/spandsp
.endfor

.include <bsd.port.mk>
