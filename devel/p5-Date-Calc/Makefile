# $OpenBSD: Makefile,v 1.24 2013/03/11 10:50:15 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	date calculations for the Gregorian calendar

MODULES=	cpan
DISTNAME=	Date-Calc-6.3
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	math/p5-Bit-Vector>=6.2 \
		devel/p5-Carp-Clan>=5.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
