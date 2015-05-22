# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:13 ajacoutot Exp $

COMMENT =		C++ logging library
DISTNAME =		rlog-1.4
SHARED_LIBS =		rlog	0.0	# 5.0
CATEGORIES =		devel
HOMEPAGE =		http://www.arg0.net/rlog
REVISION =		2

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m pthread
WANTLIB +=		c++ c++abi
MASTER_SITES =		http://rlog.googlecode.com/files/
CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config

.include <bsd.port.mk>
