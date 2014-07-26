# $OpenBSD: Makefile,v 1.1.1.1 2014/03/26 20:52:01 jca Exp $

COMMENT =		forward mail received via UUCP to the local MTA

DISTNAME =		rmail-1.0
REVISION =		0

CATEGORIES =		mail

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://wxcvbn.org/~jca/distfiles/

MAKE_FLAGS =		BINDIR="${PREFIX}/bin" \
			MANDIR="${PREFIX}/man/man"

NO_TEST =		Yes

.include <bsd.port.mk>
