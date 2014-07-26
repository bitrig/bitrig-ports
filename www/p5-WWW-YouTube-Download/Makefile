# $OpenBSD: Makefile,v 1.10 2013/04/27 14:29:08 sthen Exp $

COMMENT =	simple YouTube interface for downloading videos

MODULES =	cpan
DISTNAME =	WWW-YouTube-Download-0.50
REVISION =	0
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		XAICRON
CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

RUN_DEPENDS =	converters/p5-JSON \
		textproc/p5-XML-TreePP \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
