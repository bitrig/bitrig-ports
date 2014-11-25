# $OpenBSD: Makefile,v 1.11 2013/10/11 23:50:02 naddy Exp $

COMMENT=		ASCII art mathematics

DISTNAME=		aamath-0.3
REVISION=		4
CATEGORIES=		math

HOMEPAGE=		http://fuse.superglue.se/aamath/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://openbsd.dead-parrot.de/distfiles/

WANTLIB=		c m termcap readline
WANTLIB +=		c++ c++abi pthread
LIB_DEPENDS=		devel/readline

NO_TEST=		Yes
WRKDIST=		${WRKDIR}/aamath
ALL_TARGET=
MAKE_FLAGS=		CXX="${CXX}" LD="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/aamath ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/aamath.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
