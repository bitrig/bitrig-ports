# $OpenBSD: Makefile,v 1.3 2016/03/22 18:57:41 jca Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.1
CATEGORIES =	editors

HOMEPAGE =	http://lav.yar.ru/programs.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncursesw
WANTLIB += c++ c++abi

MASTER_SITES =	http://lav.yar.ru/download/le/

MODULES =	converters/libiconv

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
