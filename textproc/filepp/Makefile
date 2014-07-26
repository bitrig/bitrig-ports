# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:41 espie Exp $

COMMENT =	cpp-like generic file pre-processor

DISTNAME =	filepp-1.8.0
REVISION =	0
CATEGORIES =	textproc devel
MASTER_SITES =	${HOMEPAGE}

HOMEPAGE =	http://www.cabaret.demon.co.uk/filepp/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu dest
NO_BUILD =		Yes
PKG_ARCH =		*
TEST_TARGET =	fulltest
USE_GROFF =		Yes

post-configure:
	@perl -pi -e 's,\$${DESTDIR},,g;' ${WRKSRC}/filepp

.include <bsd.port.mk>
