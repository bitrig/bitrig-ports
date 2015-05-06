#	$OpenBSD: Makefile,v 1.13 2015/05/06 10:17:44 gsoares Exp $

ONLY_FOR_ARCHS= amd64

COMMENT=	instrumented fuzzer
DISTNAME=	afl-1.77b
REVISION=	0
EXTRACT_SUFX=	.tgz
CATEGORIES=	devel

HOMEPAGE=	http://lcamtuf.coredump.cx/afl
MASTER_SITES=	${HOMEPAGE}/releases/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
FAKE_FLAGS=		PREFIX="${TRUEPREFIX}"
TEST_TARGET=		test_build
WANTLIB=		c

.include <bsd.port.mk>
