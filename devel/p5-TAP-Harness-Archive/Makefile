# $OpenBSD: Makefile,v 1.4 2015/04/11 07:49:40 pascal Exp $

COMMENT =	create an archive of TAP results

MODULES =	cpan
DISTNAME =	TAP-Harness-Archive-0.17
CATEGORIES =	devel

CONFIGURE_STYLE =	modbuild

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-YAML-Tiny

.include <bsd.port.mk>
