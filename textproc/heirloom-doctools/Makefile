# $OpenBSD: Makefile,v 1.3 2015/04/07 09:49:28 bentley Exp $

COMMENT =		modernized troff implementation

V =			150406
DISTNAME =		heirloom-doctools-$V

REVISION = 		0

CATEGORIES =		textproc print

HOMEPAGE =		https://n-t-roff.github.io/heirloom/doctools.html

# see LICENSE and LICENSE.d/
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m
WANTLIB += c++ c++abi

MASTER_SITES =		https://github.com/n-t-roff/heirloom-doctools/releases/download/$V/
EXTRACT_SUFX =		.tar.bz2

MAKE_FLAGS =		CC="${CC}" \
			CCC="${CXX}" \
			CFLAGS="${CFLAGS}" \
			RANLIB=ranlib \
			INSTALL=install \
			STRIP=true \
			ROOT=${DESTDIR} \
			BINDIR=${PREFIX}/heirloom-doctools/bin \
			MANDIR=${PREFIX}/heirloom-doctools/man \
			LIBDIR=${PREFIX}/libexec/heirloom-doctools \
			MACDIR=${PREFIX}/share/heirloom-doctools/tmac \
			FNTDIR=${PREFIX}/share/heirloom-doctools/font \
			TABDIR=${PREFIX}/share/heirloom-doctools/nterm \
			HYPDIR=${PREFIX}/share/heirloom-doctools/hyphen \
			PUBDIR=${PREFIX}/share/heirloom-doctools/pub \
			PSTDIR=${PREFIX}/share/heirloom-doctools/font/devpost/postscript \
			REFDIR=${PREFIX}/libexec/heirloom-doctools/reftools \
			EUC=-DEUC

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		makefile

ALL_TARGET =

post-extract:
	perl -pi -e 's/man1b(.*)\.1b/man1\1.1/;' \
		-e 's/man7b(.*)\.7b/man7\1.7/;' \
		${WRKSRC}/*/*.mk ${WRKSRC}/*/*/*.mk

.include <bsd.port.mk>
