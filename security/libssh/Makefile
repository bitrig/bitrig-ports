# $OpenBSD: Makefile,v 1.14 2016/02/23 14:09:59 sthen Exp $

COMMENT =		C library implementing server and client side
# XXX if updating, check the number in the MASTER_SITES path
DISTNAME =		libssh-0.7.3

SHARED_LIBS +=  	ssh		2.0 # 4.5
SHARED_LIBS +=  	ssh_threads	2.0 # 4.5

CATEGORIES =		security devel

HOMEPAGE =		http://www.libssh.org/
MASTER_SITES =		https://red.libssh.org/attachments/download/195/
EXTRACT_SUFX =		.tar.xz

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto pthread ssl z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build/

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DWITH_TESTING=ON

.include <bsd.port.mk>
