# $OpenBSD: Makefile,v 1.8 2014/04/13 01:01:38 naddy Exp $

COMMENT=	mock database driver for testing

MODULES=	cpan
DISTNAME=	DBD-Mock-1.39
REVISION=	0
CATEGORIES=	databases devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI>=1.3

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
