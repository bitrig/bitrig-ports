# $OpenBSD: Makefile,v 1.62 2014/06/14 23:24:53 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	unified perl interface for database access

MODULES =	cpan
DISTNAME =	DBI-1.631
CATEGORIES =	databases
REVISION =	1

HOMEPAGE =	http://dbi.perl.org/

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS =	net/p5-PlRPC>=0.2017 \
		databases/p5-SQL-Statement>=1.400 \
		devel/p5-MLDBM

TEST_DEPENDS =	devel/p5-Test-Pod>=1.00

.include <bsd.port.mk>
