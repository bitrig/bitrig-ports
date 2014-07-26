# $OpenBSD: Makefile,v 1.3 2014/01/17 19:46:21 juanfra Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.1
REVISION =		4

HOMEPAGE =		http://lzip.nongnu.org/plzip.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread
WANTLIB +=		c++ c++abi

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
