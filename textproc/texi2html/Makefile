# $OpenBSD: Makefile,v 1.25 2015/02/16 22:57:13 naddy Exp $

COMMENT=	texinfo to HTML converter

DISTNAME=	texi2html-1.82
REVISION=	1
CATEGORIES=	textproc

HOMEPAGE=	http://www.nongnu.org/texi2html/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=texi2html/}

CONFIGURE_STYLE= gnu

USE_GMAKE=	Yes

MAKE_FLAGS+=	texinfohtmldir=${PREFIX}/share/doc/texi2html

BUILD_DEPENDS =	textproc/p5-Text-Unidecode
RUN_DEPENDS =	textproc/p5-Text-Unidecode

TEST_DEPENDS=	textproc/gsed

pre-test:
	@ln -s ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed

.include <bsd.port.mk>
