# $OpenBSD: Makefile,v 1.8 2015/11/24 09:11:03 jasper Exp $

COMMENT = 	simple metronome
CATEGORIES =	audio
DISTNAME = 	metronome-2
REVISION = 	0
MASTER_SITES = 	https://distfiles.nl/

# OpenBSD licence
PERMIT_PACKAGE_CDROM = 	Yes

FAKE_FLAGS = 	BINDIR=${TRUEPREFIX}/bin MANDIR=${TRUEPREFIX}/man/man
WANTLIB += 	c m sndio

NO_TEST =	Yes

.include <bsd.port.mk>
