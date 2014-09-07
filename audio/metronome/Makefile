# $OpenBSD: Makefile,v 1.7 2014/09/07 18:11:07 jasper Exp $

COMMENT = 	simple metronome
CATEGORIES =	audio
DISTNAME = 	metronome-2
REVISION = 	0
MASTER_SITES = 	http://distfiles.nl/

# OpenBSD licence
PERMIT_PACKAGE_CDROM = 	Yes

FAKE_FLAGS = 	BINDIR=${TRUEPREFIX}/bin MANDIR=${TRUEPREFIX}/man/man
WANTLIB += 	c m sndio

NO_TEST =	Yes

.include <bsd.port.mk>
