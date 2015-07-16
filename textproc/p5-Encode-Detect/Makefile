# $OpenBSD: Makefile,v 1.9 2015/07/16 23:57:27 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Encode::Encoding subclass that detects the encoding of data

MODULES =	cpan
DISTNAME =	Encode-Detect-1.01
REVISION =	6
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c
WANTLIB += c++ c++abi pthread

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
