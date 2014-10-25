# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:41 espie Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-2.1.6
CATEGORIES =		textproc

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/
EXTRACT_SUFX =		.tar.bz2

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

INSTALL_TARGET =	install.everything
TEST_TARGET =	test
USE_GROFF =		Yes

.include <bsd.port.mk>
