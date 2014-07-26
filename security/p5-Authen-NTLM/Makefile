# $OpenBSD: Makefile,v 1.2 2013/03/11 11:41:26 espie Exp $

COMMENT =	perl interface to the NTLM authentication mechanism

DISTNAME =	NTLM-1.08
PKGNAME =	p5-Authen-${DISTNAME}
REVISION =	0
CATEGORIES =	security

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
CPAN_AUTHOR =	NBEBOUT

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	security/p5-Digest-HMAC

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
