# $OpenBSD: Makefile,v 1.4 2015/09/16 17:21:55 sthen Exp $

COMMENT =	keeps a list of uptime records
DISTNAME =	uptimed-0.3.17
CATEGORIES =	sysutils
REVISION =	3

SHARED_LIBS +=	uptimed                   0.0 # 0.0

HOMEPAGE =	https://github.com/rpodgorny/uptimed/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c

MASTER_SITES =	http://podgorny.cz/uptimed/releases/
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
