# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:45 espie Exp $

COMMENT=	Simple HTML Calendars

MODULES=	cpan
DISTNAME=	HTML-CalendarMonthSimple-1.25
REVISION=	2
CATEGORIES=	www
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc \
		devel/p5-Date-Simple
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
