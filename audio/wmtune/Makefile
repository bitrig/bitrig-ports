# $OpenBSD: Makefile,v 1.20 2014/04/20 10:00:21 jasper Exp $

COMMENT=	premier dockable radio tuner

DISTNAME=	wmtune-1.1c
REVISION=	6
CATEGORIES=	audio x11 x11/windowmaker

HOMEPAGE=	http://www.soren.org/linux/wmtune/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}dl/

MAKE_ENV=		CC="${CC}"
USE_GROFF =		Yes

WRKDIST=		${WRKDIR}/wmtune-1.0.1-combined/

post-extract:
	@cp ${FILESDIR}/wmtune.1 ${WRKDIST}

NO_TEST=		Yes

.include <bsd.port.mk>
