# $OpenBSD: Makefile,v 1.8 2014/10/22 14:10:46 pea Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
DISTNAME =	Net-FTPSSL-0.17
REVISION =	0
CATEGORIES =	net 
REVISION = 	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	security/p5-IO-Socket-SSL

# required access to a secure ftp server
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
