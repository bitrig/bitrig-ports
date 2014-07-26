# $OpenBSD: Makefile,v 1.11 2013/03/11 11:46:17 espie Exp $

COMMENT=		command line interface to X selections
DISTNAME=		xclip-0.11
REVISION=		1
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xclip/}
HOMEPAGE=		http://xclip.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB+=		X11 Xmu c

NO_TEST=		yes
USE_GMAKE=		yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
