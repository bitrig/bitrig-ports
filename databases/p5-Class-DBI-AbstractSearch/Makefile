# $OpenBSD: Makefile,v 1.8 2013/03/11 02:52:06 espie Exp $

COMMENT=	abstract Class::DBI's SQL with SQL::Abstract

MODULES=	cpan
DISTNAME=	Class-DBI-AbstractSearch-0.07
REVISION=	1
CATEGORIES=	databases

USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-SQL-Abstract-Limit
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
