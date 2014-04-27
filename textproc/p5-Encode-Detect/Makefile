# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:43 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	3
CATEGORIES =	textproc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c
WANTLIB += c++ c++abi pthread

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
