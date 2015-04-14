# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:10 espie Exp $

BROKEN= 	needs work on bitrig

COMMENT=	Extensible formatted print C library

VERSION=	2.0
REVISION=	0
DISTNAME=	libfmt-${VERSION}
CATEGORIES=	devel plan9
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://pdos.lcs.mit.edu/~rsc/software/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	devel/libutf

PERMIT_PACKAGE_CDROM=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
USE_GROFF =	Yes
TEST_TARGET=	test

pre-build:
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}
	@cp ${FILESDIR}/Make.OpenBSD ${WRKSRC}/Make.Bitrig

.include <bsd.port.mk>
