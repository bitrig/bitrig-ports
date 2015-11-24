# $OpenBSD: Makefile,v 1.18 2015/11/24 09:11:06 jasper Exp $

COMMENT=	WindowMaker dock app similar to xload

DISTNAME=	wmmon-1.0b2
REVISION =	2
CATEGORIES=	sysutils x11 x11/windowmaker

MASTER_SITES=	https://distfiles.nl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c kvm pthread-stubs xcb

CFLAGS+=	-std=gnu89

WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_TEST=	Yes

.include <bsd.port.mk>
