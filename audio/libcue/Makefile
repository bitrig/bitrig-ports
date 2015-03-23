# $OpenBSD: Makefile,v 1.4 2015/03/16 18:07:35 naddy Exp $

COMMENT =		cue sheet parser library

DISTNAME =		libcue-1.4.0
REVISION =		1
CATEGORIES =		audio

HOMEPAGE =		http://libcue.sourceforge.net/

SHARED_LIBS =		cue		0.0	# 1.4

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libcue/}
EXTRACT_SUFX =		.tar.bz2


CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/config

NO_TEST =		Yes

.include <bsd.port.mk>
