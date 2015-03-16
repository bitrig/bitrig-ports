# $OpenBSD: Makefile,v 1.7 2015/03/16 18:07:59 naddy Exp $

COMMENT =	implementation of the XDG Base Directory specification

DISTNAME =	libxdg-basedir-1.2.0
REVISION =	0
SHARED_LIBS +=  xdg-basedir	2.0	# .3.0
CATEGORIES =	x11 devel
REVISION =	0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://nevill.ch/libxdg-basedir/downloads/

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-doxygen-doc

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/basedir.c

.include <bsd.port.mk>
