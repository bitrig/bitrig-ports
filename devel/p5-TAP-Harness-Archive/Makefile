# $OpenBSD: Makefile,v 1.3 2014/11/16 12:41:48 benoit Exp $

COMMENT =	create an archive of TAP results

MODULES =	cpan
DISTNAME =	TAP-Harness-Archive-0.15
CATEGORIES =	devel

CONFIGURE_STYLE =	modbuild

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-YAML-Tiny

.include <bsd.port.mk>
