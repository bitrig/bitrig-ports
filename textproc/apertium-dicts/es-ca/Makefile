# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:19 bentley Exp $

L =	es-ca
LANG =	Spanish/Catalan
V =	1.2.1
REVISION =	0

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
