# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:09 naddy Exp $

COMMENT=	dynamic definition of Class::DBI sub classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Loader-0.32
REVISION=	1
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI
TEST_DEPENDS=	databases/p5-Class-DBI-SQLite

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
