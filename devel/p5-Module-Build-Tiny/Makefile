# $OpenBSD: Makefile,v 1.2 2014/04/27 09:54:37 jasper Exp $

COMMENT =	tiny replacement for Module::Build

DISTNAME =	Module-Build-Tiny-0.035
REVISION =	1
CATEGORIES =	devel

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-ExtUtils-Config \
		devel/p5-ExtUtils-Helpers \
		devel/p5-ExtUtils-InstallPaths

# This module uses itself to install itself, so runs while it builds
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Harness

do-install:
	@cd ${WRKSRC} && perl \
	    ${MODPERL_BUILD} ${FAKE_TARGET} \
	        --destdir "${PREFIX}" \
	        --install_path lib="libdata/perl5/site_perl" \
	        --install_path libdoc="man/man3p"

.include <bsd.port.mk>
