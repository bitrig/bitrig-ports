#	$OpenBSD: Makefile,v 1.18 2015/08/18 06:42:38 jsg Exp $

ONLY_FOR_ARCHS= amd64

COMMENT=	instrumented fuzzer
DISTNAME=	afl-1.86b
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
